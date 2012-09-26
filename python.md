% Python: A whirlwind tour
% Harry Cutts
% 2012-07-04

![](https://www.studentrobotics.org/images/template/website_logo.png)

Python: A whirlwind tour
========================

In this tutorial, I'm going to introduce the basic concepts of programming, which will be central to the programs that you will run on your robot. There are many different languages in which computers can be programmed, all with their advantages and disadvantages, but for the Student Robotics competition we use one called Python 2.7. We chose it because it's good for beginners, but also elegant and powerful.

After you've completed the tutorial, you might want to try some exercises. There are plenty, but those at <http://algorithm.cs.uct.ac.za/pb/exercises.html> look quite good. Some are trivially easy, but there are good exercises from lesson 9 onwards.

Before we begin: a word on learning. The way that you learn to code is by doing it; make sure you try out the examples, fiddle with them, break them, do exercises. So, on with the tutorial!

Using an interpreter
--------------------

To run Python programs you need a something called an interpreter. This is a computer program interprets human-readable Python code into something that the computer can execute. There are a number of online interpreters that should work even on a locked-down computer such as you will probably find in your college.

A rather good online interpreter can be found at <skulpt.org>. It's quite simple to use; simply enter your program into the top box (with the navy blue background) and press Ctrl+Enter to run it. The output will appear in the grey box below.

If you have problems with this, try <doc.pyschools.com/console>. It works in the same way, except that you click the green arrow to run your code. Whichever you choose, test it with this classic one line program:

    print "Hello World!"

The text `Hello World!` should appear in the output box.

There's nothing particularly wrong with online interpreters for our needs, but if you want to use Python for something else you'll want a local interpreter. Mac OS X and Linux come with one by default (just type `python` at the terminal), and you can download the Windows interpreter from <python.org/download>.


Statements
----------

A statement is a line of code that does something. A program is a list of statements. For example:

    x = 5
    y = (x * 2) + 4
    print "Number of bees:", y - 2

The statements are executed one by one, in order. This example would give the output `Number of bees: 12`.

As you may have guessed, the `print` statement displays text on the screen, while the other two lines are simple algebra.

### Strings

When you want the interpreter to treat something as a text value (for example, after the `print` statement above), you have to surround it in quotes. You can use either single (`'`) or double (`"`) quotes, but try to be consistent. Pieces of text that are treated like this are called 'strings'.

Comments
--------

Placing a hash (`#`) in your program ignores anything after the hash. 

For example:

    # This is a comment
    print "This isn't."  # But this is!

You should use comments whenever you think that it is not completely clear what a statement or block of statements does, especially as you are working in teams! Also bear in mind the varying coding skills of your team. What if you were taken ill the day before the competition, and your teammates had to fix your code?

Comments are also useful for temporarily removing statements from your code, for testing:

    x = 42
    #x = x - 4
    print "The answer is", x

This example would output `The answer is 42`, as the subtraction is not executed.

Variables
---------

Variables store values for later use, as in the first example. They can store many different things, but the most relevant here are numbers, strings (blocks of text), booleans (`True` or `False`) and lists (which we'll come to later).

To set a variable, simply give its name (see [Identifiers], below), followed by `=` and a value. For example:

    x = 8
    myString = "Tall ship"

To check if two numbers are equal, the `==` operator is used. This results in a boolean value, which means either `True` or `False`. For example:

    x = 4
    y = 8
    myBoolean = (x == y)
    print c
    print x * 2 == y

The output from this example would be:

    False
    True

Concept: Identifiers
--------------------

Certain things in your program, for example variables and functions, will need names. These names are called identifiers, and must follow these rules:

* Identifiers can contain letters, digits, and underscores. They may not contain spaces or other symbols.
* An identifier cannot begin with a digit.
* Identifiers are case sensitive. This means that `foo`, `Foo` and `FOO` are three different identifiers.


`if` statements
---------------

`if` statements execute code only if a condition is true. The code to include in the `if` is denoted by a number of indented lines, followed by a blank line (see the concept section on [code blocks][block]). To indent a line, press the tab key or insert four spaces at the start. For example:

    name = "Tim"
    if name == "Tim":
        print "Hello Tim."
        print "You've got an email."
    else:    # something to do if the condition is false (optional)
        print "You're not Tim!"
    
    print "Python rocks!"

This example would output:

    Hello Tim.
    You've got an email.
    Python rocks!

Numbers can be compared using the `==` operator, as well as `<`, `>`, `!=` and more (see appendix).

Having another `if` in the `else` block is so common that there's a special keyword, `elif`, for the purpose. Another example:

    price = 50000 * 1.3
    if price < 60000:
        print "We can afford the tall ship!"
    elif price < 70000:
        print "We might be able to afford the tall ship..."
    else:
        print "We can't afford the tall ship. :-("

Output:

    We might be able to afford the tall ship...

Concept: Code blocks and indentation
------------------------------------

In the previous section, you probably noticed that the statements 'inside' the `if` statements were indented relative to the rest of the code. Python is unique in that it cares about indentation, and uses it to decide which statements are referred to by things like `if` statements.

If you don't indent your code in other programming languages, it will run, and any poor soul who has to read your code afterwards will hunt you down and hit you around the head with a large, wet, fish. In Python, you'll just get an error, which I'm sure you'll agree is preferable.

A group of consecutive statements that are all indented by the same distance, and end with a blank line, is called a code block. `if` statements, as well as functions and loops, all refer to the code block that follows them, which must be indented further than that statement. An example is in order. Let's expand the first `if` example:

    name = "Tim"
    email = "Bank of Nigeria: Tax Refund"
    if name == "Tim":
        print "Hello Tim."
        if email != "":
            print "You've got an email."

            # (blocks can contain blank lines in the middle)
            if email != "Bank of Nigeria: Tax Refund":
                print "Looks legitimate, too!"
        else:
            print "No mail."
            
    else:
        print "You're not Tim!"
    
    print "Python rocks."

Output:

    Hello Tim.
    You've got an email!
    Python rocks.

To find the limits of an `if` statement, just scan straight down until you encounter its `else` block or a statement on the same indentation level. Play around with this example until you understand what's happening.

One final thing: Python doesn't mind _how_ you indent lines, just so long as you're consistent. Some text editors insert tab characters when you press tab; others insert spaces (normally four). They'll often look the same, but cause errors if they're mixed. Check your editor's settings to make sure they're consistent. Four spaces per tab is the convention in Python. I'll now move on from this topic before that last sentence causes a flame war.

Lists
-----

Lists store more than one value in a single variable, and allow you to set and retrieve values by their position ('index') in the list. For example:

    shoppingList = ["Bread", "Milk", "PNP Transistors", "Newspaper"]
    print shoppingList[0]
	shoppingList[3] = "Magazine"
    print shoppingList[2]
	print shoppingList[3]

Output:

    Bread
    PNP Transistors
    Magazine

Notice that the indexes start at 0, not 1. There is a sensible, technical explanation for this that I shan't go into here. Also note that because of this, the last element of this four long list is at index 3. Attempting to retrieve `shoppingList[4]` would cause an error.

The values can be of any type, even other lists. Also, a list can contain values of different types.

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

Unfortunately, this method doesn't tell you the index of the current item. `x` is only a temporary variable, so modifying it has no effect on the list itself (try it). This is where the `range` and `len` functions come in (see the [Calling functions][#calling-functions] section and [the Built-in Functions appendix][#built-in-functions]). An example with numbers:

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

This will output the numbers 10 to 6, and then stop. Not very useful. However, most functions take input values ('parameters'). These are passed in brackets after the name of the function, separated by commas. For example, `print` can be treated as a function:

    print("Hello World!")
    print(42)

Many also output ('return') a value, which can then be used. A few examples:

    from math import *        # import maths functions
    x = 64
    print sqrt(64)            # the square root of 64
    b = pow(2, 4)             # 2 to the power 4
    print len( [1, 2, 4] )    # the length of the list (3 in this case)
    print range(5)            # a list of numbers from 0 to 4.

Output:

    8.0
    3
    [0, 1, 2, 3, 4]

In this example, one function is contained in the `math` module. This means that we have to specifically import it on the first line. This is explained in the [Built-in Functions appendix][#built-in-functions].

Defining functions
------------------

Of course, you'll want to make your own functions. To do this, you precede a block of code with a `def` statement, specifying an [identifier] for the function, and any parameters you might want. For example:

    def annoy(numTimes):
        for i in range(numTimes):
            print "Na na na-na na!"
    
    annoy(3)

The output would be three annoying lines of `Na na na-na na!`.

To return a value, use the `return` statement. A rather trivial example:

    def multiply(x, y):
        return x * y
    
    print multiply(2, 3)

### Using functions effectively

Without functions, most programs would be very hard to read and maintain. Here's an example (admittedly a little contrived):

    myString = "Bees like cheese when they're wearing hats."
    x = 0
    for c in list(myString):
        if c == 'a':
            x = x + 1

    y = 0
    for c in list(myString):
        if c == 'e':
            y = y + 1

Before I explain the example, try and figure out what it does. What do `x` and `y` represent?

Now, let's refine it with functions:

    def countLetter(str, l):
        x = 0
        for c in list(str): # list(str) divides the string into a list of characters.
            if c == l:
                x = x + 1
        return x
   
    myString = "Bees like cheese when they're wearing hats."

    x = countLetter(myString, 'a')
    y = countLetter(myString, 'e')

This version has a number of advantages:

* It's far more obvious what the program does.

* The program is shorter, and cleaner.

* The code for counting letters in a string is only in one place, and can be reused.

The last point has another advantage. There's a bug in this program: upper-case letters aren't counted. It's easy to fix (use the `lower` method from the `string` module), but in the function version we only have to apply the fix in one place. True, it would only be two places in the original, but in a major program, it could be thousands.

You should try and use functions wherever you see lines in your code that are repeated, or find yourself writing code to do the same thing (or a similar thing) more than once. In these situations, look at the relevant bits of code and try to think of a way to put it into a function.

Concept: Scope
--------------

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

This can get quite confusing, so it's best to avoid giving variables inside functions ('local' variables) the same identifier as those outside. If you want to get information out of a function, `return` it.

The concept of isolating the inside of a function from the outside is called 'scope'. We say that variables inside a function are in a different scope from those outside.

You can have functions within functions, and this can actually be quite useful. It this situation, each nested function will also have its own scope.

Appendices
==========

Operators
---------

There are three types of operators in Python: arithmetic, comparison, and logical. I'll list the most important.

### Arithmetic

BODMAS applies to these, just like in normal algebra.

* `+`, `-`, `*`, `/`: Self-explanatory (if you're having trouble with division, read the first half of this article: <www.ferg.org/projects/python_gotchas.html>)

* `**`: power (e.g. `4 ** 2` is 4 squared)

### Comparison

These return a boolean (`True` or `False`) value, and are used in `if` statements and `while` loops.

* `==`, `!=`: equal to, not equal to

* `<`, `<=`, `>`, `>=`: less than, less than or equal to, greater than, etc.

* `in`: returns true if the string on the left is contained in the string on the right. *Warning: does not work in some online interpreters* (including skulpt.org)

### Logical

These operators are `and`, `or`, and `not`. They're pretty self-explanatory, with an example:

    x = 5
    y = 8
    z = 2

    if x == 5 and y == 3:
        print "True"
    else
        print "False"

    print x == 5 or not y == 8         # could use y != 8 instead (preferable)
    print x == 2 and y == 3 or z == 2  # this needs brackets for clarity! (see below)

Output:

    False
    True
    True

When more than one boolean operator is used in an expression, `not` is performed first (as it works on a single operand). After this, `and` is done before `or`, but you should use brackets instead of relying on that fact, for readability. So, the last line of the example should read:

    print (x == 2 and y == 3) or z == 2


Built-in functions
------------------

A lot of functions are defined for you by Python. Those listed at <http://docs.python.org/library/functions.html> are always available, and are the most commonly used, including `len` and `range`.

Others are contained in modules. To use a function from a module, you must `import` that module, like so:

    from math import *
    print sqrt(4)

The most useful modules for the moment will be `math` (<http://docs.python.org/library/math.html>) and `sr` (<http://srobo.org/docs/programming/sr/>).

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

The output shows a problem with the fourth line, where I've forgotten to place brackets around the string parameter. The arrow indicates the place where the interpreter thinks the problem is. As you can see, this could often be more helpful.

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

This error has a traceback. Outside of an interpreter, this would list the functions that the error occurred in.

This example illustrates a common cause. As `a` has three elements, you'd expect it to have a third element. However, in Python, the 'first' element is number 0, the 'second' is number 1, and so on. So, the last element in the array is actually number 2, and element number 3 doesn't actually exist.

[identifiers]: #concept-identifiers
[identifier]: #concept-identifiers
[block]: #concept-code-blocks-and-indentation
