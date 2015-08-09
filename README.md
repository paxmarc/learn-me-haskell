# Learning Me a Haskell for Great Good

Notes I'm taking on Haskell, following the great book _Learn You a Haskell for Great Good!_ by Miran Lipovača

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
- Put brackets around any arithmetic if you want to use it as the argument to the function:

```haskell
succ 9 * 10
```

- Will only apply succ to the 9, then multiply by 10, giving 100. However:

```haskell
succ (9 * 10)
```
- will correctly return 91.

### Writing Functions

- Function definition similar to function calls
    + Function name followed by parameters
    + except, definitions also followed by and equals sign