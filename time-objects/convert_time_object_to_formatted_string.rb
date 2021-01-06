# source :::
# https://apidock.com/ruby/DateTime/strftime

# Date (Year, Month, Day):
  # %Y  - Year with century (can be negative, 4 digits at least)
          # -0001,  0000, 1995, 2009, 14292, etc.
  # %C  - year / 100 (round down.  20 in 2009)
  # %y  - year % 100 (00..99)
  # %C  - year / 100 (round down.  20 in 2009)
  # %y  - year % 100 (00..99)
  # %m  - Month of the year, zero-padded (01..12)
  # %_m - Month of the year, blank-padded ( 1..12)
  # %-m - Month of the year, no-padded (1..12)
  # %B  - The full month name (``January'')
  # %^B - The full month name, uppercased (``JANUARY'')
  # %b  - The abbreviated month name (``Jan'')
  # %^b - The abbreviated month name, uppercased (``JAN'')
  # %h  - Equivalent to %b
  # %d  - Day of the month, zero-padded (01..31)
  # %-d - Day of the month, no-padded (1..31)
  # %e  - Day of the month, blank-padded ( 1..31)
  # %j  - Day of the year (001..366)

today = Time.now
p today
p today.strftime("%B")
p today.strftime("%Y")
p today.strftime("%D")
p today.strftime("%d %B %Y")
p today.strftime("%d-%B-%Y")

# Time (Hour, Minute, Second, Subsecond):
  # %H - Hour of the day, 24-hour clock, zero-padded (00..23)
  # %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
  # %I - Hour of the day, 12-hour clock, zero-padded (01..12)
  # %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
  # %P - Meridian indicator, lowercase (``am'' or ``pm'')
  # %p - Meridian indicator, uppercase (``AM'' or ``PM'')
  # %M - Minute of the hour (00..59)
  # %S - Second of the minute (00..59)
