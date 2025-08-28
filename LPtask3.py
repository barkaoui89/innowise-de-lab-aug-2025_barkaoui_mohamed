# Secret number to guess
secret_number = 7

# the user try they guess correctly
while True:
    guess = int(input("Guess a number from 1 to 10: "))
    
    if guess == secret_number:
        print("Congratulations! You guessed the number!")
        break  # Exit loop when correct
    else:
        print("Wrong, try again.")
