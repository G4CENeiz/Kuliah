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

# Fetch the ticker data for the symbol
ticker = indodax.fetch_ticker(symbol)

# Print the current price of the cryptocurrency
print("Current price of BTC in IDR:", ticker['last'])
