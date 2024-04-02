import tensorflow as tf

# Load 64-bit model
model = tf.keras.models.load_model('../trained_models/model1.keras', custom_objects={})
model.summary()

# Quantize to 8-bit
converter_8 = tf.lite.TFLiteConverter.from_keras_model(model)
converter_8.optimizations = [tf.lite.Optimize.DEFAULT]

model_8bit = converter_8.convert()

model.save(f"./trained_models/model1_8bit.keras")