import zoneinfo

TIMEZONE_CHOICES = zip(
    sorted(zoneinfo.available_timezones()), sorted(zoneinfo.available_timezones()), strict=False
)

print(TIMEZONE_CHOICES)
