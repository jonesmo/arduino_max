import asyncio

from pythonosc import udp_client, osc_message_builder
from pythonosc.osc_server import AsyncIOOSCUDPServer
from pythonosc.dispatcher import Dispatcher

def send_as_osc(port, address, prediction, new_sound_index):
  client = udp_client.SimpleUDPClient("127.0.0.1", port)

  msg = osc_message_builder.OscMessageBuilder(address = address)
  msg.add_arg(prediction, arg_type="i")
  msg.add_arg(new_sound_index, arg_type="i")

  msg = msg.build()
  client.send(msg)

async def osc_server(ip, port):
    dispatcher = Dispatcher()
    dispatcher.map("/done_playing", playback_done)
    dispatcher.set_default_handler(print_handler)
  
    done_yet = False
    server = AsyncIOOSCUDPServer((ip, port), dispatcher, asyncio.get_event_loop())
    transport, protocol = await server.create_serve_endpoint()

    await await_playback_end()

    transport.close()
  
async def await_playback_end():
  # timeout_start = time.time()
  # timeout = 60*0.25
  
  while config.done_yet == False:
      print("Playing back...")
      await asyncio.sleep(1)
  
def print_handler(address, *args):
    if address == "/done_playing":
      print(f"{address}: {args}")
      
def playback_done(address, *args):
    for arg in args:
      if arg == "done":
        config.done_yet = True
        print("Playback done")