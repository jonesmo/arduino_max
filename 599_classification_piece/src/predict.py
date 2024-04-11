import random
import os
import time
import threading
import asyncio
from killport import get_processes, kill_ports

from utilities import load_mfccs, load_model, predict_sample
from utilities_osc import osc_server, send_as_osc

import config as config

cwd = os.getcwd()
model_path = os.path.join(cwd, "trained_models", "model1.keras")
model = load_model(model_path)

water, wildfire, wind, frogs, birds = load_mfccs()

class_map = {0: {"mfccs": water, "num": len(water), "name": "water"}, 
             1: {"mfccs": wildfire, "num": len(wildfire), "name": "fire"}, 
             2: {"mfccs": wind, "num": len(wind), "name": "wind"}, 
             3: {"mfccs": frogs, "num": len(frogs), "name": "frogs"}, 
             4: {"mfccs": birds, "num": len(birds), "name": "birds"}
}

ip = "127.0.0.1"
port_send_left = 5004
port_send_right = 5005
port_listen_left = 5006
port_listen_right = 5007

# Loop
length = 30 # seconds

class_left = 0
index_left = -1
class_right = 2
index_right = 0

prediction_left = class_left
prediction_right = class_right
  
async def left_loop(loop):
  global prediction_left, index_left, class_map, end_time
  end_time = time.time() + length
  
  while time.time() < end_time:
    sample_left = class_map[prediction_left]["mfccs"][index_left]
    
    prediction_left = predict_sample(model, sample_left)
    print("\nClass prediction left: ", class_map[prediction_left]["name"], " ", prediction_left)
    
    index_left = random.randint(1, class_map[prediction_left]["num"] - 1)
    print("Left sample to play: ", index_left, " / ", class_map[prediction_left]["num"], "\n")
    
    send_as_osc(port_send_left, "/prediction_left", prediction_left, index_left)
    
    await osc_server(ip, port_listen_left, "left", loop)
    
async def right_loop(loop):
  global prediction_right, index_right, class_map, end_time
  end_time = time.time() + length
  
  while time.time() < end_time:
    sample_right = class_map[prediction_right]["mfccs"][index_right]
      
    prediction_right = predict_sample(model, sample_right)
    print("\nClass prediction right: ", class_map[prediction_right]["name"], " ", prediction_right)
    
    index_right = random.randint(1, class_map[prediction_right]["num"] - 1)
    print("Right sample to play: ", index_right, " / ", class_map[prediction_right]["num"], "\n")
    
    send_as_osc(port_send_right, "/prediction_right", prediction_right, index_right)
    
    await osc_server(ip, port_listen_right, "right", loop)

def between_callback_left():
    loop_left = asyncio.new_event_loop()
    asyncio.set_event_loop(loop_left)

    loop_left.run_until_complete(left_loop(loop_left))
    loop_left.close()

def between_callback_right():
    loop_right = asyncio.new_event_loop()
    asyncio.set_event_loop(loop_right)

    loop_right.run_until_complete(right_loop(loop_right))
    loop_right.close()

thread1 = threading.Thread(target=between_callback_left)
thread2 = threading.Thread(target=between_callback_right)

thread1.daemon = True
thread2.daemon = True

thread1.start()
thread2.start()

thread1.join()
thread2.join()