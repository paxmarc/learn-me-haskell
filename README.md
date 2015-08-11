# Learning Me a Haskell for Great Good

Notes I'm taking on Haskell, following the great book _Learn You a Haskell for Great Good!_ by Miran Lipovača.

## Basics

 - GHC (the Glasgow Haskell Compiler) has an interactive mode, run through typing _ghci_ in the terminal.
 - Can do things like basic arithmetic, as well as boolean statments using the _True_ and _False_ types and basic boolean operators (&& and ||).

### Calling Functions

- Two types - infix and prefix.
- Infix = between the arguments, and is surrounded by backticks ('`')

```haskell
3 `elem` [2, 3]
```

- Prefix = space-separated arguments come after the function name. No backticks required.

```haskell
div 9 3
```

- Function application has the highest operator precedence.
- Put brackets around any arithmetic if you want to use it as the argument to the function. This will not work as expected:

```haskell
succ 9 * 10
```

- succ will only apply to the 9, then multiply by 10, giving 100. However:

```haskell
succ (9 * 10)
```
- will correctly return 91.

### Writing Functions

- Function definition similar to function calls
    + Function name followed by parameters
    + except, definitions also followed by an equals sign and rules

### Lists

```haskell
[1,2,3,4,5,6]
["hello","goodbye"]
```

- Homogenous data structure - all have the same type
- Operations:
    + Concatenation - _++_
    + Access element - _!!_
    + Comparison - usual operators
        * Lists compared in lexicographical order
    + _head_ - returns first element
    + _tail_ - list minus head
    + _last_ - last element of the list
    + _init_ - list minus last
    + _null_ - checks for an empty list
    + _reverse_ - reverse the list
    + _take (number)_ - extract specified number from beginning
    + _drop (number)_ - drop the specified number of elements from the beginning
    + max, min, sum, product, elem

### Ranges
- Allows us to create lists from values that can be enumerated.

```haskell
[1..20]
-- returns list from 1 to 20

[1,3..21]
-- returns all the odd numbers from 1 to 21

['A'..'Z']
-- can also use characters
```

- We can also create infinite lists, but we must use _take_ with it, otherwise it will compute forever.

### List Comprehensions
- Good way to filter, transform and combine lists.
- We create custom lists using *predicates*.
For example, taking all the instances of x*2 where x is between 1 and 10:
```haskell
[ x*2 | x <- [1..10]]
```

- We can also create conditional predicates that further filter the data that we have. For example, returning all the numbers between 10 and 20 that are _not_ 13, 15 or 19:
```haskell
[ x | x <- [10..20], x /=13, x /= 15, x /= 19]
```

- We can also use multiple variables:
```haskell
[ x*y | x <- [2,3,10]. y <- [8,10,11]]
```

- We can also use an empty variable '_' in our list comprehension definitions, in case we want to do something like calculate the length of a string, which is also treated as a list in Haskell:
```haskell
length' xs = sum [1 | _ <- xs]

```