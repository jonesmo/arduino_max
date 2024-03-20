import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
import matplotlib.pyplot as plt

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

  print(Y_onehot.shape)

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