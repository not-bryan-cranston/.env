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

icon = ''  # cloud

if main == 'Drizzle':
    icon = ''  # droplet
elif main == 'Rain':
    icon = ''  # droplet
elif main == 'Mist':
    icon = ''  # bars
elif main == 'Thunderstorm':
    icon = ''  # bolt
elif main == 'Snow':
    icon = ''  # snowflake
elif main == 'Clear':
    icon = ''  # sun
elif main == 'Clouds':
    icon = ''  # cloud

info = description.capitalize()
temp = int(float(weather['main']['temp']) - 272.15)

print('%s %s, %i°C' % (icon, main, temp))
