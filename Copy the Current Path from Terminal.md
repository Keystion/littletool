# Copy the Current Path from Terminal

- Mac OSX

## Mac OSX

### sample code 1

```zsh
pwd | pbcopy
```
> The current path has been copied to the clipboard，Paste it anywhere.

You can use this way:

```zsh
alias cppwd='pwd | pbcopy'
```

then

```zsh
cd ~
cppwd
```
> The current path has been copied to the clipboard，Paste it anywhere.

### sample code 2

```zsh
pwd | tr -d '\n' | pbcopy
```

alias

```zsh
alias cppwd='pwd | tr -d "\n" | pbcopy'
```

then


```zsh
cd ~
cppwd
```
> The current path has been copied to the clipboard，Paste it anywhere.

## Extension

### How do I remove "Custom alias"

If you add a '`alias cppwd="pwd|pbcopy"`'. You can use this way:

```zsh
unalias cppwd
```

unalias [aliasname]


--- 

Have a great time. :stuck_out_tongue_winking_eye:
