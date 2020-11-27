# Python Basics

Created: Nov 1, 2019 4:05 PM
Tags: Academic

```python
import library
variable = variable
```

Python **indexing:** if there are "n" elements in a data type (list, string, ...) that element will be indexed from 0 to n-1. Negative indexes count from the last character.

**Some python reserved words**

- True
- False
- None
- and
- as
- assert
- while

- break
- lambda
- nonlocal
- not
- or
- class
- with

- global
- continue
- def
- del
- if
- elif
- yield

- else
- except
- pass
- raise
- return
- finally

- for
- from
- import
- is
- in
- try

# Basic Data Types

---

- **Data types**

    ```python
    integer = 5
    float_ = 1.73                         # string and float are python reserved words
    string_ = "Hello World"
    boolean = True
    boolean = False
    ```

- **Variable assignment**

    ---

    variable = variable (can be any data type)

    Variables can be reassigned while keeping their name.

    ```python
    number = 7
    print(number)
    >> 7

    number = number - 3
    print(number)
    >> 4
    ```

- **Type conversion**

    ---

    ```python
    new_integer = int(variable)           # int gan only deal with + or - numbers
    new_float = float(variable)
    new_string = str(variable)            # str() can convert any type to string.
    new_bool = bool(variable)             # any variable is True except empty, empty string, 0 and 0.0
    ```

- **Arithmetic operators**

    ---

    Only work with **int** and **float** types.

    ```python
    addition = 1 + 2 + 3 + 4
    substraction = 3 - 1 - 45
    multiplication = 5 * 4 * 8

    # DIVISION BY 0 IS STRICTLY NOT ALLOWED (an error is returned)
    standard_division = 345/17            # float as result
    integer_division = 345//17            # integer as result
    modulus_division = 5 % 3              # reminder of the division as result

    exponentiation = 5**3
    root = 5**(1/3)
    ```

- **Logical operators**

    ---

    Return a Boolean value.

    ```python
    3 == 5 
    45 > 25                               # or 45 < 25
    25 >= 25                              # or 25 <= 25
                                          
    ```

# Strings

---

- **Writing strings**

    ---

    ```python
    single_quotes = 'This an "example" of str'
    double_quotes = "This is an 'example' of str"
    triple_quotes = """This "is" a very 'long' str"""
    line_break = """Sam was a simple man.
    								He lived there
    								Enjoy your life"""
    ```

    Strings are **inmutable** → Once they are created they can't be modified.

- **Special characters**

    ---

    ```python
    new_line = \n
    tab_character = \t
    single_quotes_escape = \'
    double_quotes_escape = \"
    escape_backlash = \\
    empty_string = str("")               # The same for single or triple quotes
    ```

- **String module**

    ---

    ```python
    import string

    lowercase = string.lowercase
    uppercase = string.uppercase
    punctuation = string.punctuation
    digits = string.digits 
    ```

- **String operators**

    ---

    ```python
    formatter = "This is a {} type of string".format{string}
    concatenation = string + string       # there are no whitespaces between strings
    replication = string * 2              # again, there are no whitespaces
    ```

- **Indexing strings**

    ---

    ```python
    my_string = "abcdefg"
    print(my_string[3])
    >> d

    # For slicing strings

    print(my_string[1:4])
    >> bcd
    ```

- **String methods**

    ---

    ```python
    capital = my_string.capitalize()
    uppercase = my_string.upper()
    starting = my_string.startswith("sequence")
    ending = my_string.endswith("sequence")          # both return a Boolean Value
    split = my_string.split("guide element to separate from")
    position = my_string.find("thing looking to")    # returns position in index

    # Check presence
    "something" in my_string                         # returns True or False

    # Checking composition
    digits = my_string.isdigit()
    alpha = my_string.isalpha()

    # Stripping
    right = my_string.rstrip("thing to remove")
    left = my_string.lstrip("thing to remove")
    both = my_string.strip("thing to remove")

                                         
    ```

## Setting Up a Virtual Environment

---

- Linux

    ```bash
    python -m venv $PROJECTNAME
    ```

    Activate the virtual environment

    ```bash
    source $PROJECTNAME/bin/activate
    ```

    Export pip packages from the environment: installs also same version.

    ```bash
    pip freeze > filename.txt
    ```

    Deactivate

    ```bash
    deactivate
    ```