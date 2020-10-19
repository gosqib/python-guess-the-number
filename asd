import random

print("Welcome to the \'NUMBER GUESSING GAME'")

number = random.randint(1, 20)

print("What is the name you\'d like to go buy?")
username = input()
print("Well, it\'s nice to meet you, " + username + ".")

guessesTaken = 0

print("Pick a number between 1 and 20")

while guessesTaken < 6:
    guess = int(input())

    if guess < number:
        print("Too low lmao")
        print("Try again, this time, picking a high number than ", guess, ":")
        guessesTaken += 1

    if guess > number:
        print("? Too high")
        print("Try again, this time, picking a lower number than ", guess, ":")
        guessesTaken += 1

    if guess == number:
        print("You got it.")
        break

    if guessesTaken == 6:
        print("Unfortunately, you lose ", username, "...")
        print("The number being thought of was ", number, "...")
        break
