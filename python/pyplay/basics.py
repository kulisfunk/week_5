# print("hello world")

# def say_hello():
#     print("hello world")
#
#     print("bye world")
# indentation needed and no end at end of function. indentations determine contents of function
# say_hello()

# def say_hello(name):
#     print("hello " + name)
#
#     print("bye world")
#
# say_hello("martin")

# def say_hello(name):
#     if(name == "martin"):
#         print("hello " + name)
#
#     else:
#         print("Uh, I don't know you")
#
# say_hello("martin")
# say_hello("fred")


# my_list = [1, 2, 3, 4, 5]
# my_list = ["spam", "ham", "eggs", "parrot"]
# my_list.reverse() #changes my_list permanently for rest of code below
# my_list_reversed = my_list.reverse() won't work as python won't put method result in variable?

#loops

# my_list = ["spam", "ham", "eggs"]
#
# for food in my_list:
#     print(food)
#
# print("the loop has finished")

# list1 = [2, 4, 6]
# lsit2 = [1, 3, 5]
#
# print(list1 * list2) doesn't work!!!!

# list1 = [2, 4, 6]
# lsit2 = [1, 3, 5]

# import numpy as np
#
# array1 = np.array([2, 4, 6])
# array2 = np.array([1, 3, 5])
#
# print(array1 * array2)
#numpy allows arrays to be created, whereas python only has lists not arrays. Arrays ahve to be same length

#dictionaries .... basically hashes

person = {
    "name": "martin", "age": 51, "favourite_foods": ["pizza", "bacon", "parrot"]
}

# print(person["name"])

# for food in person["favourite_foods"]: pulls values out of dictionary
#     print(food)

# for attribute in person:
#     print(attribute) pulls dictionary item names
    # print(person[attribute])
