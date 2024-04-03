import os
import random
import shutil

bird_file_path = "/Users/mej/Music/Digital_Music/Music/Cornell Lab of Ornithology/cornell_guide_to_bird_sounds"
destination_path = "/Users/mej/Documents/Arduino/frogs/bird_samples"

bird_files = os.listdir(bird_file_path)

bird_sublist = random.sample(bird_files, 150)

for bird_file in bird_sublist:
  full_path = f"{bird_file_path}/{bird_file}"
  
  shutil.copy(full_path, f"{destination_path}/{bird_file}")