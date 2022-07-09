import traceback

raise Exception('Error Message.')
"""
Traceback (most recent call last):
  File "debugging.py", line 2, in <module>
    raise Exception('Error Message.')
Exception: Error Message.
"""

try:
  raise Exception('Error Message.')
except:
  with open('error.txt', 'w') as error_file:
    error_file.write(traceback.format_exc())
  print('The traceback info was written to error.txt.')
#The traceback info was written to error.txt.

# Assertions can be disabled by passing the -O option when running Python
# python3 -Oc "assert False" debugging.py
sum = 4
assert sum == 5, 'Addition Error'
"""
Traceback (most recent call last):
  File "debugging.py", line 20, in <module>
    assert sum == 5, 'Addition Error'
AssertionError: Addition Error
"""
