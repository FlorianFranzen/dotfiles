#!/usr/bin/env python3

import secretstorage

# Get evolution password:
bus = secretstorage.dbus_init()

collection = secretstorage.get_default_collection(bus)

items = list(collection.search_items({'e-source-uid': '1477930373.24462.4@nsa3002.ad01.caesar.de',
                             'xdg:schema': 'org.gnome.Evolution.Data.Source'}))

if len(items) != 1:
    print("Could not retrieve unique key")

item = items[0]

if not hasattr(item, 'unlock'):
    print("Can not unlock key")

if item.is_locked() and item.unlock()[0]:
    print('Failed to unlock item')

password = item.get_secret().decode('utf-8')

username = 'florian'

import imaplib

obj = imaplib.IMAP4_SSL('imap.denkmuskel.org', 993)
obj.login(username, password)
obj.select()

print(len(obj.search(None, 'UnSeen')[1][0].split()))
