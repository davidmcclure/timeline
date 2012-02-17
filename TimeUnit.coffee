# An abstract unit of time.
class TimeUnit
  constructor: (@sub, @name) ->

# Get an array of [number] units of type [unit].
getUnits = (unit, number) ->
  return unit for i in [1..number]



# Gregorian calendar.

second    = new TimeUnit null, null
minute    = new TimeUnit getUnits(second, 60), null
hour      = new TimeUnit getUnits(minute, 60), null
day       = new TimeUnit getUnits(hour, 24), null

january   = new TimeUnit getUnits(day, 31), 'January'
february  = new TimeUnit getUnits(day, 28), 'February'
march     = new TimeUnit getUnits(day, 31), 'March'
april     = new TimeUnit getUnits(day, 30), 'April'
may       = new TimeUnit getUnits(day, 31), 'May'
june      = new TimeUnit getUnits(day, 31), 'June'
july      = new TimeUnit getUnits(day, 31), 'July'
august    = new TimeUnit getUnits(day, 31), 'August'
september = new TimeUnit getUnits(day, 30), 'September'
october   = new TimeUnit getUnits(day, 31), 'October'
november  = new TimeUnit getUnits(day, 30), 'November'
december  = new TimeUnit getUnits(day, 31), 'December'

year      = new TimeUnit [
  january,
  february,
  march,
  april,
  may
  june,
  july,
  august,
  september,
  october,
  november,
  december
], null

decade    = new TimeUnit getUnits(year, 10), null
century   = new TimeUnit getUnits(decade, 10), null
millenium = new TimeUnit getUnits(century, 10), null
