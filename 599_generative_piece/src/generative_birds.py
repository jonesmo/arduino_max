import numpy as np

from sklearn.model_selection import train_test_split

import os

from utilities import create_labels, load_audio

# Load samples
cwd = os.getcwd()

birds_audio, bird_files = load_audio("/Users/mej/Documents/Arduino/599_generative_piece/sound_samples/bird_samples")
not_birds_audio, not_bird_files = load_audio("/Users/mej/Documents/Arduino/599_generative_piece/sound_samples/not_bird_samples")

print("Bird samples: ", birds_audio.shape)
print("Not-bird samples: ", not_birds_audio.shape)

# Create training and test data
X = np.concatenate((birds_audio, not_birds_audio), axis=0)

Y, Y_onehot = create_labels(birds_audio.shape[0], not_birds_audio.shape[0], 0, 0, 0)
t = 0.5

X_train, X_test, y_train, y_test = train_test_split(X, Y_onehot, test_size=0.3, stratify=Y)

# Train network to predict 2 seconds of audio from a label
