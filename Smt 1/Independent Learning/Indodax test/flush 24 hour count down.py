import time
import sys

# Get the current time in seconds
start_time = time.time()

# Set the countdown duration to 24 hours in seconds
countdown_duration = 24 * 60 * 60

# Calculate the end time of the countdown
end_time = start_time + countdown_duration

# Continuously check the time until the countdown is over
while time.time() < end_time:
    # Get the current time in seconds
    current_time = time.time()

    # Calculate the time remaining in the countdown
    time_remaining = end_time - current_time

    # Convert the time remaining to hours, minutes, and seconds
    hours, remainder = divmod(time_remaining, 60 * 60)
    minutes, seconds = divmod(remainder, 60)

    # Print the time remaining in the countdown and flush the output
    print("Time remaining until next order: {:02}:{:02}:{:02}".format(int(hours), int(minutes), int(seconds)), end='\r')
    sys.stdout.flush()

    # Sleep for 1 second before checking the time again
    time.sleep(1)

# Print a message when the countdown is over
print("Countdown over!")
