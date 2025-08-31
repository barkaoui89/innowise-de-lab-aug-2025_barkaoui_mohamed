def add_vat(price, vat_rate=0.20):
    return price + price * vat_rate

# Given data
prices = [1000, 3499, 250]
nds = 0.20

# Apply function in a loop
print("Prices with VAT:")
for price in prices:
    total = add_vat(price, nds)
    print(f"Original: {price}, With VAT: {total:.2f}")
