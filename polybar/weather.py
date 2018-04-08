#!/usr/bin/env python3

import json
import os
import sys
import urllib.request

city = os.getenv('OPENWEATHERMAP_LOCATION', '')
api_key = os.getenv('OPENWEATHERMAP_API_KEY', '')

try:
    weather = eval(str(urllib.request.urlopen('https://api.openweathermap.org/data/2.5/weather?q={}&APPID={}'.format(city, api_key)).read())[2:-1])
except urllib.error.URLError:
    sys.exit(0)

currWeather = weather['weather'][0]

main = currWeather['main']
description = currWeather['description']

icon = ''

if main == 'Drizzle':
  icon = ''
elif main == 'Rain':
  icon = ''
elif main == 'Thunderstorm':
  icon = ''
elif main == 'Snow':
  icon = ''
elif main == 'Clear':
  icon = ''
elif main == 'Clouds':
  icon = ''

info = description.capitalize()
temp = int(float(weather['main']['temp']) - 272.15)

print('%s %s, %i °C' % (icon, main, temp))
