import ccxt
import os
import msvcrt

def wait_for_key():
    print("Press any key to continue...")
    msvcrt.getch()

api_key = os.environ.get("API_KEY")
api_secret = os.environ.get("API_SECRET")

# Authenticate with Indodax using your API key and secret
indodax = ccxt.indodax({
    'rateLimit': 3000,
    'enableRateLimit': True,
    'verbose': True,
    'apiKey': api_key,
    'secret': api_secret,
})

# Get the account balance
balance = indodax.fetch_balance()

# Get the initial balance in IDR
initial_balance_idr = balance['IDR']['free']

print(initial_balance_idr)

wait_for_key()