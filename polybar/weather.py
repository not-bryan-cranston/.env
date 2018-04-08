#!/usr/bin/env python

import json
import os
import urllib.request

city = os.environ['OPENWEATHERMAP_LOCATION']
api_key = os.environ['OPENWEATHERMAP_API_KEY']

weather = eval(str(urllib.request.urlopen('https://api.openweathermap.org/data/2.5/weather?q={}&APPID={}'.format(city, api_key)).read())[2:-1])

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
