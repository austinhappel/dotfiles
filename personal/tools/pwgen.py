#!/usr/bin/env python

from secrets import choice
import os
import sys

# DO NOT USE THIS. But, if you're in a jam and need a memorable password quick, this can work.
# To be truly secure, read the information here: http://world.std.com/~reinhold/diceware.html

# To use:
# 1. download diceware file from here: http://world.std.com/~reinhold/diceware.wordlist.asc
# 2. verify pgp signature if you want to be extra secure
# 3. Strip the PGP contents (the first 2 lines and the last 11 lines)
# 4. Place file in same directory as this executable.
# 5. Run ./pwgen.py
# 6. If the file doesn't run, make sure pwgen is chown'd correctly (755)

# TODO: download the diceware list if it doesn't exist.
# url is: http://world.std.com/~reinhold/diceware.wordlist.asc
# example:
# from urllib.request import urlopen
# response = urlopen('http://world.std.com/~reinhold/diceware.wordlist.asc')
# html = response.read()
# print(html)
# strip out pgp beginning and end


dir_path = os.path.dirname(os.path.realpath(__file__))
diceware_path = os.path.join(dir_path, 'diceware.wordlist.asc')
diceware_file_exists = os.path.isfile(diceware_path)

if diceware_file_exists == False:
    print('\nERROR: You don\'t have a diceware file at\n%s\n' % diceware_path)
    print('Please download a diceware file and place it in\n%s\n' % dir_path)
    print('Visit http://diceware.com to get your file.')
    print('Make sure to strip out the PGP lines.')
    sys.exit()

print('Using diceware file: %s' % diceware_path)
print('Your new password is: \n')

with open(diceware_path) as f:
    words = [word.strip() for word in f]
    password = ' '.join(choice(words).lstrip('1234567890\t') for i in range(7))

print(password)
