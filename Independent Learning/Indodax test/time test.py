import time
import sys

print("hello world")
time.sleep(5)

sec = 10

for i in range(sec):
    num = sec - i
    sys.stdout.write("\r")
    sys.stdout.write("Skipping... %2s" % num)
    sys.stdout.flush()
    time.sleep(1)