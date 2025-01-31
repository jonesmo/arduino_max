import asyncio
import threading

from pythonosc import udp_client, osc_message_builder
from pythonosc.osc_server import AsyncIOOSCUDPServer, ThreadingOSCUDPServer
from pythonosc.dispatcher import Dispatcher

import config as config

def send_as_osc(port, address, prediction, new_sound_index):
  client = udp_client.SimpleUDPClient("127.0.0.1", port)

  msg = osc_message_builder.OscMessageBuilder(address = address)
  msg.add_arg(prediction, arg_type="i")
  msg.add_arg(new_sound_index, arg_type="i")

  msg = msg.build()
  client.send(msg)

async def osc_server(ip, port, side, loop):
    dispatcher = Dispatcher()
    dispatcher.map("/done_playing", playback_done)
    dispatcher.set_default_handler(print_handler)
    
    server = ThreadingOSCUDPServer((ip, port), dispatcher)
    server_thread = threading.Thread(target=server.serve_forever)
    server_thread.start()

    await await_playback_end(side)
    
    if side == "left":
      config.done_yet_left  = False
    if side == "right":
      config.done_yet_right  = False

    server.server_close()
  
async def await_playback_end(side):
    print("Playing back...")
    
    if side == "left":
      while config.done_yet_left == False:
        await asyncio.sleep(1)
    if side == "right":
      while config.done_yet_right == False:
        await asyncio.sleep(1)

def playback_done(address, *args):
    for arg in args:
      if arg == "done_left":
        config.done_yet_left = True
        print("Playback left done")

      if arg == "done_right":
        config.done_yet_right = True
        print("Playback right done")
        
def print_handler(address, *args):
    if address == "/done_playing":
      print(f"{address}: {args}")