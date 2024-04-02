import os
import re

import numpy as np
import pandas as pd

from scipy.io.wavfile import read
import soundfile as sf
import librosa
import audioread

sr = 44100
cwd = os.getcwd()

def extract_mfccs(class_name, directory, sr = sr):
  files_list = os.listdir(directory)
  num_files = len(files_list)
  used_files = []
  
  print("Directory contains", num_files, "audio files.")
  
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
  used_files_np = np.array(used_files)
  
  mfccs = np.zeros(shape=(num_samples, 20, 173))
  j = 0
  
  for audio_sample in samples:
    mels = librosa.feature.mfcc(y=audio_sample, sr=sr)
    
    mfccs[j] = mels
    
    j += 1
    
  mfccs_length = mfccs[0].shape[0] * mfccs[0].shape[1]
  mfccs_flattened = np.zeros(shape=(num_samples, mfccs_length))
  k = 0
  
  for mfcc_set in mfccs:
    flattened = np.ndarray.flatten(mfcc_set)
    
    mfccs_flattened[k] = flattened
    
    k += 1
  
  print(mfccs_flattened.shape)
  
  save_path = os.path.join(cwd, "mfccs", f"{class_name}_mfccs.npy")
  save_files_path = os.path.join(cwd, "mfccs", f"{class_name}_files.npy")
  np.save(save_path, mfccs_flattened)
  np.save(save_files_path, used_files_np)

extract_mfccs("fire", "/Users/mej/Documents/Arduino/599_classification_piece/sound_samples/fire_samples")
extract_mfccs("water", "/Users/mej/Documents/Arduino/599_classification_piece/sound_samples/water_samples")
extract_mfccs("wind", "/Users/mej/Documents/Arduino/599_classification_piece/sound_samples/wind_samples")
extract_mfccs("frogs", "/Users/mej/Documents/Arduino/599_classification_piece/sound_samples/frog_samples")
extract_mfccs("birds", "/Users/mej/Documents/Arduino/599_classification_piece/sound_samples/bird_samples")