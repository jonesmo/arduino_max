import matplotlib.pyplot as plt
import math
import numpy as np
import pandas as pd
import seaborn as sns

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

from scipy.io.wavfile import read
import librosa
from sklearn.model_selection import train_test_split
from sklearn.metrics import ConfusionMatrixDisplay
from sklearn.metrics import confusion_matrix

import os
import re
from time import time

from utilities import accuracy, create_labels

# Load samples
path_water = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/water_mfccs.npy"
water = np.load(path_water)

path_wildfire = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/wildfire_mfccs.npy"
wildfire = np.load(path_wildfire)

path_wind = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/wind_mfccs.npy"
wind = np.load(path_wind)

path_frogs = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/frog_mfccs.npy"
frogs = np.load(path_frogs)

path_birds = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/bird_mfccs.npy"
birds = np.load(path_birds)

# Get time, create folders
current_time = int(time())
figure_folder = f"./figures/{current_time}"
checkpoints_folder = f"./model_checkpoints/{current_time}"

if not os.path.exists(figure_folder):
    os.makedirs(figure_folder)
if not os.path.exists(checkpoints_folder):
    os.makedirs(checkpoints_folder)


# Create training and test data
X = np.concatenate((water, wildfire, wind, frogs, birds), axis=0)

Y, Y_onehot = create_labels(water.shape[0], wildfire.shape[0], wind.shape[0], frogs.shape[0], birds.shape[0])
t = 0.5

X_train, X_test, y_train, y_test = train_test_split(X, Y_onehot, test_size=0.3, stratify=Y)

# Create the model
d = X_train.shape[1]
print("Dimensionality of data: ", d)
alpha = 1
n = d * alpha
lr = 1e-3

model = keras.Sequential([
        layers.Input(shape=(d,)),
        # layers.Dense(n, activation = 'relu'),
        layers.Dense(5, activation = 'linear'),
        layers.Softmax()
])

optim = tf.keras.optimizers.Adam(learning_rate = lr)
loss_fn = tf.keras.losses.CategoricalCrossentropy()

model.compile(
    optimizer = optim,
    loss = loss_fn,
    metrics = ['accuracy'],
)

num_iters = 0
iters = 10
batch_size = 100

checkpoint_path = f"{checkpoints_folder}/{current_time}.weights.h5"
cp_callback = tf.keras.callbacks.ModelCheckpoint(filepath=checkpoint_path,
                                                 save_weights_only=True,
                                                 verbose=0)

# Train the model
history = model.fit(
  X_train, y_train,
  epochs = iters,
  batch_size = batch_size,
  validation_split = 0,
  verbose = 1,
  validation_data = (X_test, y_test),
  shuffle = True,
  callbacks=[cp_callback]
)

num_iters += iters

model.save(f"./trained_models/model_{current_time}.keras")

fig1 = plt.plot(history.history['loss'])
plt.xlabel('Epochs')
plt.ylabel('Training cross-entropy loss')
plt.savefig(f'{figure_folder}/loss_history.png')
plt.clf()

fig2 = plt.plot(history.history['accuracy'])
plt.xlabel('Epochs')
plt.ylabel('Training accuracy')
plt.savefig(f'{figure_folder}/accuracy_history.png')
plt.clf()

# Make predictions on test data
predictions = model.predict(X_test)
y_pred = np.argmax(predictions, axis = 1)
y_test_labels = np.argmax(y_test, axis = 1)

test_accuracy = accuracy(y_pred, y_test_labels)

print("Accuracy on test data: ", test_accuracy)

# Create confusion matrices
labels = ["fire", "water", "wind", "frogs", "birds"]

cm = confusion_matrix(y_test_labels, y_pred)

disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=labels)

disp.plot(cmap=plt.cm.Reds)
plt.savefig(f'{figure_folder}/confusion_matrix.png')
plt.clf()

cmn = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]
fig, ax = plt.subplots(figsize=(8,6))
sns.heatmap(cmn, annot=True, fmt='.2f', xticklabels=labels, yticklabels=labels, cmap="Spectral")
plt.ylabel('True label')
plt.xlabel('Predicted label')
plt.savefig(f'{figure_folder}/confusion_matrix_percent.png')