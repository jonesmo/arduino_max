import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
import matplotlib.pyplot as plt

from scipy.io.wavfile import read
import soundfile as sf

import timeit
import os
import re

def create_labels(num_class_1, num_class_2, num_class_3, num_class_4, num_class_5):
  y1, y2, y3, y4, y5 = 0, 1, 2, 3, 4

  Y1 = np.full((num_class_1, 1), y1)
  Y2 = np.full((num_class_2, 1), y2)
  Y3 = np.full((num_class_3, 1), y3)
  Y4 = np.full((num_class_4, 1), y4)
  Y5 = np.full((num_class_5, 1), y5)

  Y = np.concatenate((Y1, Y2, Y3, Y4, Y5), axis=0)

  num_unique_labels = len(np.unique(Y))

  Y_onehot = tf.keras.utils.to_categorical(Y,
                                        num_classes = num_unique_labels)

  return Y, Y_onehot

def multinomial_logistic_regression(X_train, y_train, num_classes, lr, iters, batch_size, verbose):
  dimensions = X_train.shape[1]

  model = keras.Sequential([
          layers.Input(shape = (dimensions,)),
          layers.Dense(num_classes),
          layers.Softmax()
  ])

  optim = tf.keras.optimizers.Adam(learning_rate = lr)

  model.compile(
    optimizer = optim,  # Optimizer
    loss = 'mse', # Loss function
    metrics = ['mse']
  )

  history = model.fit(
    X_train, y_train,
    epochs = iters,
    batch_size = batch_size,
    validation_split = 0,
    verbose = verbose,
  )

  plt.plot(history.history['loss'])
  plt.xlabel('Epochs')
  plt.ylabel('MSE Loss')

  return model

def keep_training(model, X_train, y_train, iters, batch_size, verbose):
    history = model.fit(
      X_train, y_train,
      epochs = iters,
      batch_size = batch_size,
      validation_split = 0,
      verbose = verbose,
    )

    plt.plot(history.history['loss'])
    plt.xlabel('Epochs')
    plt.ylabel('MSE Loss')

    return model
  
def accuracy(y_pred_label, y_label):
    return np.mean(y_pred_label == y_label)

def load_audio(directory):
  sr = 44100

  files_list = os.listdir(directory)
  num_files = len(files_list)
  used_files = []
  
  print(f"Directory contains", num_files, "audio files.")
  
  samples_raw = np.zeros(shape=(num_files, 2 * sr))
  i = 0
  
  for file_name in files_list:
    is_wav = re.search(".wav$", file_name)
    is_flac = re.search(".flac$", file_name)
    is_mp3 = re.search(".mp3$", file_name)
    
    filename = f"{directory}/{file_name}"
    
    if is_wav:
      sr, audio = read(filename)
      
      if np.ndim(audio) == 2:
          scaled = audio.sum(axis=1) / 2
      else:
          scaled = audio

      audio_length = len(scaled)
      
      if audio_length > 2 * sr:
        first_two_seconds = scaled[0:(2*sr)]

        samples_raw[i] = first_two_seconds

        used_files.append(file_name)

        i += 1

    if is_flac:
      audio_raw, sr = sf.read(filename)
      audio = np.array(audio_raw)
      scaled = audio.sum(axis=1) / 2
      audio_length = len(scaled)

      if audio_length > 2 * sr:
        first_two_seconds = scaled[0:(2*sr)]

        samples_raw[i] = first_two_seconds
        
        used_files.append(file_name)

        i += 1
        
    if is_mp3:
      audio_raw, sr = sf.read(filename)
      audio = np.array(audio_raw)

      if np.ndim(audio) == 2:
          scaled = audio.sum(axis=1) / 2
      else:
          scaled = audio

      audio_length = len(scaled)

      if audio_length > 2 * sr:
        first_two_seconds = scaled[0:(2*sr)]

        samples_raw[i] = first_two_seconds
        
        used_files.append(file_name)

        i += 1
        
  num_samples = i - 1
  samples = samples_raw[:num_samples].copy()
  used_files = used_files[:num_samples]
  
  return samples, used_files

def load_model(model_file):
  start_load = timeit.default_timer()

  model = tf.keras.models.load_model(model_file, custom_objects={})
  # model.summary()

  stop_load = timeit.default_timer()
  time_load = stop_load - start_load
  print("Time to load model: ", time_load, "\n")
 
  return model

def predict_sample(model, sample):
  sample_expanded = np.expand_dims(sample, axis=0)

  predictions = model.predict(sample_expanded)
  predicted_label = np.argmax(predictions[0])
  
  return predicted_label