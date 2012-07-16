% Python: A whirlwind tour
% Harry Cutts
% 2012-07-04

![](https://www.studentrobotics.org/images/template/website_logo.png)

Python: A whirlwind tour
========================

Statements
----------

A statement is a line of code that does something. A program is a list of statements. For example:

    x = 5
    y = (x * 2) + 4
    print "Number of bees:", y - 2

The statements are executed one by one, in order. This example would give the output `Number of bees: 12`.

As you may have guessed, the `print` statement displays text on the screen.

### Literal values

In the previous example, `5`, `2`, `4`, and `"Number of bees:"` were all literal values. A literal value is simply one that is specified in the code (for example, `x` and `y` are not literals).

To make a text literal (called a string), you must surround it in quotes, like `"Number of bees:"` above. Numbers are always literals unless they are inside quotes.

Comments
--------

Placing a hash (`#`) in your program ignores anything after the hash. 

For example:

    # This is a comment
    print "This isn't."    # But this is!

You should use comments whenever you think that it is not clear what a statement or block of statements does, especially as you are working in teams!

Comments are also useful for temporarily removing statements from your code, for testing:

    x = 42
    #x = x - 4
    print "The answer is", x

This example would output `The answer is 42`, as the subtraction is not executed.

Variables
---------

Variables store values for later use, as in the first example. They can store many different things, but the most relevant here are numbers, strings (blocks of text), booleans (`True` or `False`) and lists (which we'll come to later).

Variable names must be made up of letters and numbers, cannot contain spaces, and are case sensitive. This means that `foo` is not the same as `Foo` or `FOO`.

To set a variable, simply use the `=` sign. For example:

    x = 8
    foo = "Tall ship"

To check if two numbers are equal, the `==` operator is used. This results in a boolean value, which means either `True` or `False`. For example:

    x = 4
    y = 8
    c = (x == y)
    print c
    print x * 2 == y

The output from this example would be:

    False
    True

`if` statements
---------------

`if` statements execute code only if a condition is true. For example:

    name = "Tim"
    if name == "Tim":
        print "Hello Tim."
        print "You've got an email."
    else:    # something to do otherwise
        print "You're not Tim!"
    
    print "Python rocks!"

The code to include in the `if` statement is denoted by the indent. To indent a line, press the tab key at the start. A blank line is also needed after the last statement in the `else` block, to denote the end. This example would output:

    Hello Tim.
    You've got an email.

Numbers can be compared using the `==` operator, as well as `<`, `>`, `!=` and more (see appendix).

Having another `if` in the `else` block is so common that there's a special keyword, `elif`, for the purpose. Another example:

    price = 50000 * 1.5
    if price < 60000:
        print "We can afford the tall ship!"
    elif price < 70000:
        print "We might be able to afford the tall ship..."
    else:
        print "We can't afford the tall ship. :-("
    

Lists
-----

Lists store more than one value in a single variable, and allow you to set and retrieve values by number. For example:

    shoppingList = ["Bread", "Milk", "PNP Transistors", "Newspaper"]
    print shoppingList[0]    # Yes, it starts at zero.
	shoppingList[3] = "Magazine"
    print shoppingList[2]

Output:

    Bread
    PNP Transistors

The values can be anything, even other lists. Also, a list can contain values of different types.

`while` loops
-------------

The `while` loop is the most basic type of loop. It repeats the statements in the loop while a condition is true. For example:

    x = 10
    while x > 0:
        print x
        if x == 5:
            print "Half way there!"
        
        x = x - 1
    
    print "Zero!"

Output:

    10
    9
    8
    7
    6
    5
    Half way there!
    4
    3
    2
    1
    Zero!

The condition is the same as it would be in an `if` statement, and the block of code to put in the loop is denoted in the same way, too.

`for` loops
-----------

The most common application of loops is in conjunction with lists. The `for` loop is designed specifically for that purpose. Example:

    shoppingList = ["Bread", "Milk", "PNP Transistors", "Newspaper"]
    for x in shoppingList:
        print x

The code is executed once for each item in the list, with `x` set to each item in turn. So, the output of this example is:

    Bread
    Milk
    PNP Transistors
    Newspaper

Unfortunately, this method doesn't tell you where the current item is in the list. `x` is only a temporary variable, so modifying it has no effect. This is where the `range` and `len` functions come in (see the Calling functions section and the Functions appendix). An example with numbers:

    prices = [4, 5, 2, 1.50]
    # Add VAT
    for i in range(len(prices)):
        prices[i] = prices[i] * 1.20
    
    print prices

Output: `[4.8, 6.0, 2.4, 1.7999999999999998]`

Calling functions
-----------------

Functions are pre-written bits of code that can be run ('called') at any point. At their simplest, they take no parameters and return nothing. For example, the `exit` function ends your program prematurely:

    x = 10
    while x > 0:
        print x
        x = x - 1
        if x == 5:
            exit()

This will output the numbers 10 to 6, and then helpfully close the window so you can't see them. Not very useful. However, most functions take input values ('parameters'). These are passed in brackets after the name of the function, separated by commas. For example, `print` can be treated as a function:

    print("Hello World!")
    print(42)

Most also output ('return') a value, which can then be used. A few examples:

    from math import *        # import mathematics functions (see appendix)
    x = 64
    print sqrt(64)            # the square root of 64
    b = pow(2, 4)            # 2 to the power 4
    print len( [1, 2, 4] )    # the length of the list (3 in this case)
    print range(5)            # a list of numbers from 0 to 4.

Output:

    8.0
    3
    [0, 1, 2, 3, 4]

In this example, one function is contained in the `math` module. This means that we have to specifically import it on the first line.

Defining functions
------------------

Of course, you'll want to make your own functions. To do this, you precede a block of code with a `def` statement, specifying a name of the function, and those of any parameters you might want. For example:

    def annoy(numTimes):
        for i in range(numTimes):
            print "Na na na-na na!"
    
    annoy(3)

The output would be three annoying lines of `Na na na-na na!`.

To return a value, use the `return` statement. A rather trivial example:

    def multiply(x, y):
        return x * y
    
    print multiply(2, 3)

Function and parameter names follow the same rules as variable names.

### Variables inside functions

When you set a variable inside a function, it will only keep its value inside that function. For example:

    x = 2
    
    def foo():
        x = 3
        print "In foo(), x =", x
    
    foo()
    print "Outside foo(), x =", x

Output:

    In foo(), x = 3
    Outside foo(), x = 2

This can get quite confusing, so it's best to avoid using variables inside functions the with the same name as those outside.

Appendices
==========

Operators
---------

A list of operators can be found at http://www.tutorialspoint.com/python/python_basic_operators.htm . Arithmetic operators are listed in the first section. For conditions (in `if` statements and `while` loops) you need the comparison operators (`==`, `<`, `<=`, etc.) and the logical operators (`and`, `or`, and `not`).

Built-in functions
------------------

A lot of functions are defined for you by Python. Those listed at http://docs.python.org/library/functions.html are always available, and are the most commonly used, including `len` and `range`.

Others are contained in modules. To use a function from a module, you must `import` that module, like so:

    from math import *
    print sqrt(4)

The most useful modules for the moment will be `math` (http://docs.python.org/library/math.html) and `sr` (http://srobo.org/docs/programming/sr/).

Common Errors and mistakes
--------------------------

### Syntax Error

This error message appears when you have entered a statement that doesn't obey the forms of the language. For example:

    def foo(s):
        print s
    
    foo "Hello World!"	# should be foo("Hello World!")

Output:

    File "<stdin>", line 4
        foo "Hello World!"
                         ^
    SyntaxError: invalid syntax

The output shows a problem with the fourth line, where I've forgotten to place brackets around the string parameter. The arrow indicates the place where the interpretter thinks the problem is. As you can see, this could often be more helpful.

Other causes of syntax errors to look out for are:
* Incorrect indentation or not leaving blank lines after blocks of code. An example:

    if x == 4:
        print "True"	# note no blank line
    print "My hat is covered in bees."

* Missing colons at the end of `def`s, `if`s, `for`s, etc.

### Name Error

    x = 5
    print X		# wrong case

Output:

    Traceback [...]
    NameError: name 'X' is not defined

This error has occurred because the variable was defined as `x`, but referenced as `X` in uppercase. As previously alluded to, Python distinguishes between cases, so these are two different variables.

### Index Error

If you try to access an element of a list that does not exist, you'll get this error. For example:

    a = ["Molly", "Polly", "Dolly"]
	print a[0]
	print a[3]

Output:

    Traceback (most recent call in last):
      File "<stdin>", line 1, in <module>
    IndexError: list index out of range

This error has a traceback. Outside of an interpretter, this would list the functions that the error occurred in.

This example illustrates a common cause. As `a` has three elements, you'd expect it to have a third element. However, in Python, the 'first' element is number 0, the 'second' is number 1, and so on. So, the last element in the array is actually number 2, and element number 3 doesn't actually exist.
