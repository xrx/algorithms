import random

def insertionSort(num_list):
    for index in range(1, len(num_list)):
        current = num_list[index]
        position = index

        while position > 0 and num_list[position-1] > current:
            num_list[position] = num_list[position-1]
            print(num_list)
            position = position-1

            num_list[position] = current

# list of random numbers but with duplicates
# [random.randrange(x) for item in list(range(x))]

num_list = list(range(40))
random.shuffle(num_list)
insertionSort(num_list)
print(num_list)
