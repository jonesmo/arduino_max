import tensorflow as tf
import numpy as np

import random

from utilities import load_mfccs, load_model, predict_sample, send_as_osc

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
print("\nClass prediction: ", class_map[prediction]["name"])

# Pick a MFCC set from that class
new_index = random.randint(0, class_map[prediction]["num"])
print("New sample to play: ", new_index, " / ", class_map[prediction]["num"], "\n")

send_as_osc(5005, "/prediction", prediction)