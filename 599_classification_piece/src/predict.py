import random
import asyncio
import os
import time

from utilities import load_mfccs, load_model, predict_sample
from utilities_osc import osc_server, send_as_osc

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
port = 5006

# Loop
end_time = time.time() + 20

class_left = 0
index_left = -1
class_right = 2
index_right = 0

while time.time() < end_time:
  sample_left = class_map[class_left]["mfccs"][index_left]
  sample_right = class_map[class_right]["mfccs"][index_right]
  
  prediction_left = predict_sample(model, sample_left)
  print("\nClass prediction left: ", class_map[prediction_left]["name"], " ", prediction_left)
  
  prediction_right = predict_sample(model, sample_right)
  print("\nClass prediction right: ", class_map[prediction_right]["name"], " ", prediction_right)
  
  index_left = random.randint(0, class_map[prediction_left]["num"])
  print("Left sample to play: ", index_left, " / ", class_map[prediction_left]["num"], "\n")

  index_right = random.randint(0, class_map[prediction_right]["num"])
  print("Right sample to play: ", index_right, " / ", class_map[prediction_right]["num"], "\n")
  
  send_as_osc(5005, "/prediction", prediction_left, index_left, prediction_right, index_right)
  asyncio.run(osc_server(ip, port))