import time
import sys
import msvcrt

def wait_for_key():
    sys.stdout.write("\r")
    print("Press any key to continue...")
    msvcrt.getch()

print("hello world")
time.sleep(5)

sec = 10

for i in range(sec):
    num = sec - i
    sys.stdout.write("\r")
    sys.stdout.write("Skipping... %2s" % num)
    sys.stdout.flush()
    time.sleep(1)

wait_for_key()