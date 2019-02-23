# -*- coding: utf-8 -*-
import sys

value1 = -1
value2 = -1
while (value1 != 0 and value2 != 0) :
	value1,value2 = input().split()
	value1 = int(value1)
	value2 = int(value2)
	media =  (2*value1) - value2
	print (media)
print
