import zoneinfo
from pprint import pprint

TIMEZONE_CHOICES = zip(
    sorted(zoneinfo.available_timezones()), sorted(zoneinfo.available_timezones()), strict=False
)

# print(zoneinfo.available_timezones())
print('-'*40)
pprint(sorted(zoneinfo.available_timezones()))
print('-'*40)
