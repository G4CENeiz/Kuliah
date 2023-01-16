import ccxt
import time
import math
import sys
import msvcrt
import os

def wait_for_key():
    sys.stdout.write("\r")
    print("Press any key to continue...")
    msvcrt.getch()

def count_down():
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

apiKey = os.environ.get("API_KEY")
apiSecret = os.environ.get("API_SECRET")

# Authenticate with the exchange
exchange = ccxt.indodax({
    'rateLimit': 3000,
    'enableRateLimit': True,
    'verbose': True,
    'apiKey': apiKey,
    'secret': apiSecret,
})

# Set the symbol and number of days
symbol = 'BTC/IDR'
days = 7

# Place a buy order for the amount every day for 30 days
for i in range(days):
    # Get the initial balance in USDT
    balance = exchange.fetch_balance()
    balance = balance['IDR']['free']
    
    # Fetch the order book data for the symbol
    order_book = exchange.fetch_order_book(symbol)

    # Get the sell price from the order book
    sell_price = order_book['asks'][0][0]

    print(sell_price)

    # Divide the initial balance by the number of days
    amount = (balance / (days - i))/sell_price

    print(balance)
    print(amount)

    order = exchange.create_order(symbol, 'limit', 'buy', amount, sell_price)
    print(order)

    count_down()
    # time.sleep(86400)  # Sleep for one day

wait_for_key()