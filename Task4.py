import random

# The program randomly selects a number from 1 to 5
secret_number = random.randint(1, 5)

# user to guess
guess = int("5")

# Compare and give feedback
if guess == secret_number:
    print("You guessed!")
elif guess > secret_number:
    print("Too much!")
else:
    print("Too few!")
