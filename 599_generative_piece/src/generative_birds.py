import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

from sklearn.model_selection import train_test_split
from sklearn.metrics import ConfusionMatrixDisplay
from sklearn.metrics import confusion_matrix

from scipy.io.wavfile import write

import os
from time import time, strftime, localtime

from utilities import accuracy, create_labels, load_audio

# Get time, create folders
current_time = strftime('%Y-%m-%dZ%H:%M:%S', localtime(int(time())))
figure_folder = f"./figures/{current_time}"
checkpoints_folder = f"./model_checkpoints/{current_time}"
models_folder = "./trained_models"

if not os.path.exists(figure_folder):
    os.makedirs(figure_folder)
if not os.path.exists(checkpoints_folder):
    os.makedirs(checkpoints_folder)
if not os.path.exists(models_folder):
		os.makedirs(models_folder)

# Load samples
birds_audio, bird_files = load_audio("/Users/mej/Documents/Arduino/599_generative_piece/sound_samples/bird_samples", 0.25)
not_birds_audio, not_bird_files = load_audio("/Users/mej/Documents/Arduino/599_generative_piece/sound_samples/not_bird_samples", 0.25)

print("Bird samples: ", birds_audio.shape)
print("Not-bird samples: ", not_birds_audio.shape)

# Create training and test data
X = np.concatenate((birds_audio, not_birds_audio), axis=0)

Y, Y_onehot = create_labels(birds_audio.shape[0], not_birds_audio.shape[0], 0, 0, 0)
t = 0.5

X_train, X_test, y_train, y_test = train_test_split(X, Y_onehot, test_size=0.3, stratify=Y)
print("Training samples: ", y_train.shape[0])
print("Test samples: ", y_test.shape[0])

# Train network to predict 2 seconds of audio from a label
output_d = X_train.shape[1]
input_d = y_train.shape[1]
print("Input dimensionality of data: ", input_d)
print("Output dimensionality of data: ", output_d)
alpha = 1
n = output_d * alpha
lr = 1e-3

model = keras.Sequential([
        layers.Input(shape=(input_d,)),
        layers.Dense(n, activation = 'relu'),
        layers.Dense(output_d, activation = 'linear'),
])

optim = tf.keras.optimizers.Adam(learning_rate = lr)
loss_fn = tf.keras.losses.MeanAbsoluteError()

model.compile(
    optimizer = optim,
    loss = loss_fn,
    metrics = ['mae'],
)

print(model.summary())

num_iters = 0
iters = 10
batch_size = 100

checkpoint_path = f"{checkpoints_folder}/{current_time}.weights.h5"
cp_callback = tf.keras.callbacks.ModelCheckpoint(filepath=checkpoint_path,
                                                 save_weights_only=True,
                                                 verbose=0)

# Train the model
# ** Note that y_train and X_train are flipped **
history = model.fit(
  y_train, X_train,
  epochs = iters,
  batch_size = batch_size,
  validation_split = 0,
  verbose = 1,
  validation_data = (y_test, X_test),
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

fig2 = plt.plot(history.history['mae'])
plt.xlabel('Epochs')
plt.ylabel('Mean absolute error')
plt.savefig(f'{figure_folder}/mae_history.png')
plt.clf()

# Make predictions on y_test data
predictions = model.predict(y_test)
print(predictions.shape)

# Turn one prediction into an audio example
rate = 44100
scaled = np.int16(predictions[0] / np.max(np.abs(predictions[0])) * 32767)
write(f'./generated_audio/{current_time}.wav', rate, scaled)



# X_pred = np.argmax(predictions, axis = 1)
# X_test_labels = np.argmax(y_test, axis = 1)

# test_accuracy = accuracy(y_pred, y_test_labels)

# print("Accuracy on test data: ", test_accuracy)

# Create confusion matrices
# labels = ["birds", "not_birds"]

# cm = confusion_matrix(y_test_labels, y_pred)

# disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=labels)

# disp.plot(cmap=plt.cm.Reds)
# plt.savefig(f'{figure_folder}/confusion_matrix.png')
# plt.clf()

# cmn = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]
# fig, ax = plt.subplots(figsize=(8,6))
# sns.heatmap(cmn, annot=True, fmt='.2f', xticklabels=labels, yticklabels=labels, cmap="Spectral")
# plt.ylabel('True label')
# plt.xlabel('Predicted label')
# plt.savefig(f'{figure_folder}/confusion_matrix_percent.png')