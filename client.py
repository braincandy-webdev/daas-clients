#!/usr/bin/env python
import requests
import sys

API_HOST = 'http://diacritic.braincandy.com.ar'
API_RESOURCE = '/api/char/{0}'

def get_char(c):
  r = requests.get(API_HOST+API_RESOURCE.format(c))
  if r.status_code == 200:
    for c in r.json().get('output'):
      print c,

if __name__ == "__main__":
  if len(sys.argv) > 1:
    get_char(sys.argv[1])
  else:
    print "Usage: {0} [char]".format(sys.argv[0])
