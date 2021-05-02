#!/usr/bin/env python3

import i3ipc

def on(i3, e):
	if e.container.window_class in ['discord']:
		print("Focused discord")
		with open('/home/asaligrama/.config/dunst/discord_notifs.txt', 'w') as f:
			f.write('0')

i3 = i3ipc.Connection()

i3.on('window::focus', on)
try:
	i3.main()
finally:
	i3.main_quit()
