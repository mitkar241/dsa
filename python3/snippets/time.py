"""
time class
"""
import datetime
tm = datetime.time(1, 30, 11, 22)
print(tm)
#01:30:11.000022

"""
date class
"""
import datetime
date = datetime.date(2000, 11, 16)
print('Date date is ', date.day, ' day of ', date.month, ' month of the year ', date.year)
#Date date is  16  day of  11  month of the year  2000

"""
Conversion from date to time
"""
from datetime import datetime
print(datetime.strptime('15/11/2000', '%d/%m/%Y'))
#2000-11-15 00:00:00

"""
time.strftime()
"""
from time import gmtime, strftime
s = strftime("%a, %d %b %Y %H:%M:%S + 1010", gmtime())
print(s)
#Sun, 28 Nov 2021 18:51:24 + 1010
