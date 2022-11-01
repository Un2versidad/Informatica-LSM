import threading
import time
import os
import discord

from discord.ext import commands
from pynput.mouse import Listener as MouseListener
from pynput.keyboard import Listener as KeyboardListener

cwd = os.getcwd()

client = commands.Bot(command_prefix = "what is this aaaaaaa", self_bot = True)

def update_keypress(key):
    with open(f"{cwd}/time.txt", "w") as file:
        file.write(str(round(time.time())))

def update_mousemove(x, y):
    with open(f"{cwd}/time.txt", "w") as file:
        file.write(str(round(time.time())))

def start():
    client.run("hola", bot = False)

@client.event
async def on_ready():
    print('loaded')

@client.event
async def on_message(msg):
    if msg.guild == None:
        if msg.author in client.user.friends:
            with open(f"{cwd}/time.txt", "r") as file:
                async def say():
                    try:
                        file.seek(0)
                        time.sleep(0.1)
                        old_time = int(file.read())
                        if time.time() - old_time > 600:
                            await msg.reply(f"hi im afk, went afk: <t:{old_time}:R>")
                    except:
                        await say()
                await say()
    
    await client.process_commands(msg)


kb_listen = KeyboardListener(on_press = update_keypress)
ms_listen = MouseListener(on_move = update_mousemove)
thread = threading.Thread(target = start)

kb_listen.start()
ms_listen.start()
thread.start()

kb_listen.join()
ms_listen.join()
thread.start()