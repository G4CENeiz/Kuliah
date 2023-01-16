import ccxt

# Initialize the Indodax exchange object
indodax = ccxt.indodax({
    'rateLimit': 3000,
    'enableRateLimit': True,
    'verbose': True,
    'apiKey': 'YOUR_API_KEY',
    'secret': 'YOUR_SECRET',
})

# Set the symbol for the cryptocurrency you want to check the price of
symbol = 'BTC/IDR'

# Fetch the order book data for the symbol
order_book = indodax.fetch_order_book(symbol)

# Get the sell price from the order book
sell_price = order_book['asks'][0][0]

# Print the sell price of the cryptocurrency
print("Sell price of BTC in IDR:", sell_price)
