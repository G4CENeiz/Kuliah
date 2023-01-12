import ccxt
import time
import datetime
import math
import sys

symbol = 'BTC/IDR'
target_hours = [15]
num_of_days = 30

# Authenticate with Indodax using your API key and secret
indodax = ccxt.indodax({
    'rateLimit': 3000,
    'enableRateLimit': True,
    'verbose': True,
    'apiKey': 'YOUR_API_KEY',
    'secret': 'YOUR_SECRET',
})

# Get the account balance
balance = indodax.fetch_balance()

# Get the initial balance in IDR
initial_balance_idr = balance['IDR']['free']

# calculate the amount you want to spend per transaction
amount_idr_per_transaction = initial_balance_idr/num_of_days

# create a variable to store the purchase price
purchase_prices = []
purchase_btc = []

# loop for num_of_days times
for i in range(num_of_days):
    try:
        # get the current unix time
        current_time = time.time()

        # get the current hour
        current_hour = datetime.datetime.fromtimestamp(current_time).hour

        # check if current hour is in the target_hours
        if current_hour in target_hours:
            sys.stdout.write("\r")
            sys.stdout.write("Buy order in progress...")
            sys.stdout.flush()
            # get the ticker data
            ticker = indodax.fetch_ticker(symbol)
            # get the latest price
            price = ticker['last']
            # calculate the amount in BTC
            amount_btc = amount_idr_per_transaction/price

            # Place the buy order
            order = indodax.create_order(symbol, 'limit', 'buy', amount_btc, price)

            # Print the order details
            print(order)
            # add the purchase price to the list
            purchase_prices.append(price)
            purchase_btc.append(amount_btc)
        else:
            # if the hour is not the target hours, sleep until the next target hour
            while True:
                current_time = time.time()
                current_hour = datetime.datetime.fromtimestamp(current_time).hour
                if current_hour in target_hours:
                    break
                sys.stdout.write("\r")
                sys.stdout.write("Waiting for next target hour...")
                sys.stdout.flush()
                time.sleep(60)

    except Exception as e:
        # Handle any exceptions that may occur
        print("An error occurred: ", e)

# wait for 5 days before selling the cryptocurrency
for i in range(432000, 0, -1):
    sys.stdout.write("\r")
    sys.stdout.write("Waiting for {} seconds before selling...".format(i))
    sys.stdout.flush()
    time.sleep(1)
sys.stdout.write("\r")
sys.stdout.write("Waiting completed. Selling now...")
sys.stdout.flush()

try:
    # get the ticker data
    ticker = indodax.fetch_ticker(symbol)

    # get the latest price
    current_price = ticker['last']

    # calculate the average purchase price
    average_purchase_price = sum(purchase_prices)/len(purchase_prices)

    # check if the current price is 5% lower than the average purchase price
    if current_price <= average_purchase_price*0.95:
        # calculate the total amount of btc
        total_btc = sum(purchase_btc)
        #place the sell order
        order = indodax.create_order(symbol, 'market', 'sell', total_btc)
        # print the order details
        print(order)
    else:
        # Wait for another hour
        time.sleep(3600)
except Exception as e:
    # Handle any exceptions that may occur
    print("An error occurred: ", e)