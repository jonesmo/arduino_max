import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
import matplotlib.pyplot as plt

import timeit

import config as config

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

def load_mfccs():
  path_water = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/water_mfccs.npy"
  water = np.load(path_water)

  path_wildfire = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/fire_mfccs.npy"
  wildfire = np.load(path_wildfire)

  path_wind = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/wind_mfccs.npy"
  wind = np.load(path_wind)

  path_frogs = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/frogs_mfccs.npy"
  frogs = np.load(path_frogs)

  path_birds = "/Users/mej/Documents/Arduino/599_classification_piece/mfccs/birds_mfccs.npy"
  birds = np.load(path_birds)
  
  return water, wildfire, wind, frogs, birds

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