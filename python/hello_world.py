from decimal import *

# Resources for More Basic Practice
# Before you begin your assessment, I wanted to point out some helpful links for practice (don't worry about being able to do these exercises, I just want you to be aware of the links so you can visit them later, since we still haven't discussed functions, you won't be able to utilize a lot of these resources yet!):
#
# Basic Practice:
# http://codingbat.com/python
#
# More Mathematical (and Harder) Practice:
# https://projecteuler.net/archives
#
# List of Practice Problems:
# http://www.codeabbey.com/index/task_list
#
# A SubReddit Devoted to Daily Practice Problems:
# https://www.reddit.com/r/dailyprogrammer
#
# A very tricky website with very few hints and touch problems (Not for beginners but still interesting)
# http://www.pythonchallenge.com/

# my_letters = "Zzz"
# my_letters = my_letters * 10
# print(my_letters.lower())
# my_string = "Tinker"
# my_string = my_string + " " + "Tailor"
# print(my_string[1:4])
# print(my_string[-1])
# print(my_string[:4])
# print(my_string[-3:])
#
# my_string = "Hello World"
# my_string = my_string + " it's {weather} {location}"
# my_string = my_string.strip()
# my_string = my_string.format(weather='beautiful',location='outside')
# print(my_string)
# print(my_string.split())

# calc = Decimal(100)/Decimal(777)
# print("the result was {c:1.3f}".format(c=calc))
# print('')
# print('{0:8} | {1:9}'.format('Fruit','Quantity'))
# print('{0:8} | {1:9}'.format('Apples',3.))
# print('{0:8} | {1:9}'.format('Pears',10))
# print('{0:8} | {1:9}'.format('Bananas',2))
# print('')
# print('{0:<8} | {1:^8} | {2:>8}'.format('Left','Centre','Right'))
# print('{0:<8} | {1:^8} | {2:>8}'.format(11,1.02,100))
# print('')

# name = "Jose"
# print(f"Hello, my name is {name}") # Python 3.4 and above

# my_list = ['one','two','three','four','five']
# my_list = my_list + ['six','seven','eight','nine','ten']
# my_list[3] = my_list[3].upper()
# my_list.append(11)
# my_pop = my_list.pop(-2)
# print(my_list)
# print("popped: " + my_pop)
# print('')
# my_list.sort()
# print(my_list)
# print('')
# my_list.reverse()
# print(my_list)
# print('')
# my_list.insert(5,'ten')
# print(my_list)
# print('')
# print(my_list[2:])
# print('')
# my_array = [['one','two'],['three','four']]
# print(my_array[1][0])
# print('')

# my_countries = {'AU':{'name':'Australia','currency':'AUD'},'US':{'name':'United States of America','currency':'USD'},'NZ':{'name':'New Zealand','currency':'NZD'}}
# my_countries['UK'] = {'name':'The United Kingdom of Great Britain and Nothern Ireland','currency':'GBP'}
# print("{} transacts in {}".format(my_countries['AU']['name'],my_countries['AU']['currency']))
# print("{} transacts in {}".format(my_countries['NZ']['name'],my_countries['NZ']['currency']))
# print("{} transacts in {}".format(my_countries['US']['name'],my_countries['US']['currency']))
# print("{} transacts in {}".format(my_countries['UK']['name'],my_countries['UK']['currency']))
# print('')
# print(my_countries.keys())
# print(my_countries.values())
# print(my_countries.items()) # outputs tuples
# print('')

# my_tuple = (1,2,3,3,3,4,5)
# my_list = [1,2,3,4,5]
# my_list[0] = 0
# print(my_list)
# print('')
# print(my_tuple.index(3))
# print(my_tuple.count(3))
# print('')

# my_set = set()
# print(my_set)
# print('')
# my_set.add(1)
# print(my_set)
# print('')
# my_set.add(2)
# print(my_set)
# print('')
# my_list = [1,2,1,4,4,3,2,2,2,4,5]
# print(my_list)
# print(set(my_list))
# print('')
# print(set('Mississippi'))
# print('')

# print(type(True))
# print('')
# print(pwd)


# my_file = open('/Users/markhansen/Dev/snipets/python/myfile.txt') #requires path!!
# print(my_file.read())
# print('')
# print('Where is my file?\n\n' + my_file.read())
# print('')
# my_file.seek(0)
# print('Seek it naught and ye shall find...')
# print(my_file.read())
# print('')
# my_file.seek(0)
# print(my_file.readlines())
# print('')
# my_file.close()

# with open('/Users/markhansen/Dev/snipets/python/myfile.txt') as my_file:
#   contents = my_file.read()
#   print(contents)


# with open('/Users/markhansen/Dev/snipets/python/myfile.txt',mode='r') as my_file: #read
#   contents = my_file.read()
#   print(contents)
#
# with open('/Users/markhansen/Dev/snipets/python/myfile.txt',mode='a') as my_file: #append
#   my_file.write('FOUR on forth')
#
# with open('/Users/markhansen/Dev/snipets/python/myfile.txt',mode='r') as my_file: #read
#   contents = my_file.read()
#   print(contents)

# x = open('/Users/markhansen/Dev/snipets/python/test.txt','w')
# x.write('Hello World')
# x.close()

# x = open('/Users/markhansen/Dev/snipets/python/test.txt','a')
# x.write('This is the end')
# x.close()
