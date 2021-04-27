# The minimalist and lightweight virtualenv manager

The `uWrapper` (or micro wrapper) is a shell utility to replace virtualenv wrapper with no other dependencies
than your very ol' shell. It is versatile and lightweight. The motivation to write this tool was the
author's frustration in making the traditional virtualenvwrapper tool working correctly with different
development environments using the same "dotfiles". Nothing this simple is supposed to be hard, hence, this
tool was created to address that minimal problem (with less than `fifty` lines of shellscript).

NOTE: This tool is not a drop-in replacement for virtualenvwrapper. Instead, it provides a minimalist way
of managing python virtual environments effectively with zero calories included :)

## Quick Install

```sh
zsh <(curl -s https://raw.githubusercontent.com/mannysz/uw/main/install.sh)
```

## Installing from this repository

- Clone this repository to your preferred folder
- At your `.bashrc`, `.bashprofile`, or `.zshrc` file, add the following lines:

```sh
source [PATH_TO_UWRAPPER_REPO]/uwrapper.sh
```

To add bashcompletion support to autocomplete virtual environment names, add the following after the line above.

```sh
source [PATH_TO_UWRAPPER_REPO]/bashcompletion.sh
```

## Removing the tool

Delete the `.uw` directory created in your home folder and remove the two source lines added in your shell profile file.

## Contributions

~~I am lazy and did not create any sort of automatic installation procedure using `curl` or `wget` although that
would be the ideal way of installing this tool~~. Any sort of contribution is very welcome as long
as the main `uwrapper.sh` file is kept simple, well documented, small, and the contribution is meaningful.
