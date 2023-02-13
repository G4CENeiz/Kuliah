import ccxt
import sys
import os
import time

def countdown(hours):
    # Get the current time in seconds
    start_time = time.time()

    # Set the countdown duration to 24 hours in seconds
    countdown_duration = hours * 60 * 60

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

def buy():
    # Place a buy order for the amount every day for 30 days
    for i in range(days):
        # Get the initial balance in IDR
        balance = indodax.fetch_balance()
        idr_balance = balance['IDR']
        
        # Divide the initial balance by the number of days
        buy_amount = ((idr_balance / (days - i)) * 0.9949) / sell_price
        print(idr_balance)
        print(buy_amount)

        # Fetch the order book data for the symbol
        order_book = indodax.fetch_order_book(symbol)

        # Get the sell price from the order book
        sell_price = order_book['sell'][0][0]
        print(sell_price)

        # Placing buy order
        buy_order = indodax.create_order(symbol, 'limit', 'buy', buy_amount, sell_price)
        print(buy_order)

        # Storing purchase data to list
        purchase_prices.append(sell_price)
        purchase_btc.append(buy_amount)

        # Sleep for a day with countdown
        countdown(24)

def sell():
    balance = indodax.fetch_balance()

    btc_balance = balance['btc']

    order_book = indodax.fetch_order_book(symbol)

    buy_price = order_book['buy'][0][0]
    print(btc_balance)
    print(buy_price)

    sell_order = indodax.create_order(symbol, 'limit', 'sell', btc_balance, buy_price)
    print(sell_order)

#region main

# Getting API key and secret key
apiKey = os.environ.get("API_KEY")
apiSecret = os.environ.get("API_SECRET")

# Authenticate with the exchange
indodax = ccxt.indodax({
    'rateLimit': 3000,
    'enableRateLimit': True,
    'verbose': True,
    'apiKey': apiKey,
    'secret': apiSecret,
})

# Set the symbol and number of days
symbol = 'BTC/IDR'
days = 7

# Purchase data 
purchase_prices = []
purchase_btc = []

# Variable for "checking" loop
hours_in_5_days = 24 * 5
hours_checked = 0
down_by_8_percent = 0.92

while True:
    buy()
    while hours_checked < hours_in_5_days:
        get_order_book = indodax.fetch_order_book(symbol)
        current_sell_price = get_order_book['buy'][0][0]

        average_purchase_price = sum(purchase_prices)/len(purchase_prices)

        if current_sell_price <= average_purchase_price * down_by_8_percent:
            sell()
        else:
            countdown(1)
        hours_checked += 1
    sell()

#endregion