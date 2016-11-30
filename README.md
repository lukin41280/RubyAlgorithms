# RubyAlgorithms

A place to build and practice algorithms using Ruby.  Directions are from Dev Bootcamp coding challenges.

### Fixed Array Challenge

Implement and write RSpec tests for the FixedArray class. The class must conform to the following interface:

Interface

1. FixedArray#new(size): Instantiate a new FixedArray with space for size elements.
2. FixedArray#get(index): Get a value from the array at the specified index. Throw an 'OutOfBoundsException' if the user tries to get a value at an index outside the bounds of the fixed array.
3. FixedArray#set(index, element): Set a value in the array at a specific index and return the element. Throw an 'OutOfBoundsException' if the user tries to set a value at an index outside the bounds of the fixed array.

### Array Lists Challenge

Implement and write RSpec tests for the ArrayList class, supporting the following interface:

#### Interface

1. ArrayList#new(size): Instantiate a new dynamic array with initial size size.
2. ArrayList#add(element): Add element to the end of the list. Return the element added.
3. ArrayList#get(index): Retrieve an element at index. If no element exists at that index, throw an 'OutOfBoundsException'
4. ArrayList#set(index, element): Replace an existing element at index. Return the element. If no element exists at that index, throw an 'OutOfBoundsException'
5. ArrayList#length: Return the number of items in the list

#### Release 2: Insert
Sometimes we want to be able to inject an element into the middle of a list. Implement and test ArrayList#insert(index, element). #insert should insert the value element in the List at position index. If there isn't an element at that position in the list, throw an 'OutOfBoundsException'

#### Release 3: Complexity
A crucial part of knowing a data structure is the big-O of its operations. Knowing how to make one isn't enough.

By now you have the following methods on your ArrayList class:

ArrayList#new(size)
ArrayList#add(element)
ArrayList#get(index)
ArrayList#set(index, element)
ArrayList#size(element)
ArrayList#insert(index, element)
For each of these methods, determine the big-O complexity of the method. Create a file complexity.md and write the big-O for each method, explaining why.

For example, ArrayList#new is O(1) — whether our list ends up containing 0 elements or 1000, #new(size) will always take the same amount of time.

Be sure to note the best case and worst case complexity for each method. Depending on your growth strategy, certain methods may take much longer depending on certain circumstances.
