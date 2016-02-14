#!/usr/bin/python

import urllib2
import json

# Europe/Netherlands/~Rotterdam
latitude = "51"
longitude = "4"

url = 'http://api.sunrise-sunset.org' + \
	'/json' + \
	'?lat=' + latitude + \
	'&lng=' + longitude + \
	'&date=today'

result = urllib2.urlopen(url).read()
parsed_json = json.loads(result)

sunrise = parsed_json['results']['sunrise']
sunset = parsed_json['results']['sunset']
print sunrise + ' | ' + sunset
