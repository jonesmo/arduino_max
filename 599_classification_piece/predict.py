import tensorflow as tf
import numpy as np

import random
import time
import asyncio

from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import AsyncIOOSCUDPServer

from utilities import load_mfccs, load_model, playback_done, predict_sample, print_handler, send_as_osc
import config

model = load_model("./trained_models/model1.keras")

water, wildfire, wind, frogs, birds = load_mfccs()

class_map = {0: {"mfccs": water, "num": len(water), "name": "water"}, 
             1: {"mfccs": wildfire, "num": len(wildfire), "name": "fire"}, 
             2: {"mfccs": wind, "num": len(wind), "name": "wind"}, 
             3: {"mfccs": frogs, "num": len(frogs), "name": "frogs"}, 
             4: {"mfccs": birds, "num": len(birds)}, "name": "birds"}

starter_class = 0
starter_index = -1
sample = class_map[starter_class]["mfccs"][starter_index]

prediction = predict_sample(model, sample)
print("\nClass prediction: ", class_map[prediction]["name"], " ", prediction)

# Pick a MFCC set from that class
new_index = random.randint(0, class_map[prediction]["num"])
print("New sample to play: ", new_index, " / ", class_map[prediction]["num"], "\n")

# Send to Max
send_as_osc(5005, "/prediction", prediction)

# Get Done from Max
dispatcher = Dispatcher()
dispatcher.map("/done_playing", playback_done)
dispatcher.set_default_handler(print_handler)

ip = "127.0.0.1"
port = 5006

async def loop():
  # timeout_start = time.time()
  # timeout = 60*0.25
  
  while config.done_yet == False:
      print(time.time())
      await asyncio.sleep(1)

async def osc_server():
    done_yet = False
    server = AsyncIOOSCUDPServer((ip, port), dispatcher, asyncio.get_event_loop())
    transport, protocol = await server.create_serve_endpoint()

    await loop()

    transport.close()
    
asyncio.run(osc_server())