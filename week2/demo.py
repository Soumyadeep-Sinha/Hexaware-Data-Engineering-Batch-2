
# for loop basic syntax

# fruits = ["apple", "banana", "cherry"]
# for fruit in fruits:
#     print(fruit)
    

# if you want to specify a particular range and step value
# print number from 1 to 10 in steps of 2

# for i in range(1, 11, 2):
#     print(i)

# for i in range(3):
#     for j in range (4):
#         print(f"{i} + {j}")

# reverse a list
# my_list = [1, 2, 3, 4, 5]

# reversed_list = []

# for i in range(len(my_list) - 1, -1, -1):
#     reversed_list.append(my_list[i])

# print(reversed_list)


#nested
# for i in range(3):
#     for j in range(2):
#         print(f"i = {i}, j = {j}")

# while loop
# count = 0
# while count < 5:
#     print(count)
#     count += 1

# break statement

# for i in range(10):
#     if i == 5:
#         break
#     print(i)

# continue statement

# for i in range(5):
#     if i == 2:
#         continue
#     print(i)

# pass statement

# for i in range(5):
#     if i == 2:
#         pass  # Do nothing
#     print(i)
    
# List Comprehension

# squares = [x**2 for x in range(10)]
# print(squares)

# Lengthy version
# squares = []
# for x in range(10):
#     squares.append(x**2)
# print(squares)

# enumerate

# fruits = ["apple", "banana", "cherry"]
# for index, fruit in enumerate(fruits):
#     print(f"Index: {index}, Fruit: {fruit}")

# long version
# index = 0
# for fruit in fruits:
#     print(f"Index: {index}, Fruit: {fruit}")
#     index += 1
    

# zip
# names = ["Alice", "Bob", "Charlie"]
# scores = [85, 90, 95]

# for name, score in zip(names, scores):
#     print(f"{name} scored {score}")

# long version

# for i in range(len(names)):
#     name = names[i]
#     score = scores[i]
#     print(f"{name} scored {score}")


# using else with loops

# for i in range(5):
#     print(i)
# else:
#     print("Loop completed without interruption.")
    

# looping through dictionaries

person = {"name": "Alice", "age": 30, "city": "New York"}

# # Loop through keys
# for key in person:
#     print(key)

# # Loop through values
# for value in person.values():
#     print(value)

# Loop through key-value pairs
# for key, value in person.items():
#     print(f"{key}: {value}")


# list comprehension with condition

# evens = [x for x in range(21) if x % 2 != 0]
# print(evens)


# looping through strings

# text = "hello"
# for char in text:
#     print(char)
    
    
# for index in range(len(text)):
#     print(f"Character at index {index} is {text[index]}")
    
# python do while implementtion

# while True:
#     user_input = input("Enter something (type 'exit' to quit): ")
#     print(f"You entered: {user_input}")
    
#     # Break out of the loop if the user types "exit"
#     if user_input.lower() == "exit":
#         break


# Looping with Time Delay

# import time

# for i in range(10):
#     print(i)
#     time.sleep(1) 