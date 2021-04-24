# The minimalist and lightweight virtualenv manager

The `uWrapper` (or micro wrapper) is a shell utility to replace virtualenv wrapper with no other dependencies
than your very ol' shell. It is versatile and lightweight. The motivation to write this tool was based on the
authors frustration in making the traditional virtualenvwrapper tool working correctly with different
development environments using the same "dotfiles". Nothing this simple is supposed to be hard, hence, this
tool was created with less than `fifty` lines of shellscript.

NOTE: This tool is not a drop-in replacement for virtualenvwrapper. Instead, it provides a minimalist way
of managing python virtual environments effectively with zero calories included :)

## Installing

- Clone this repository to your preferred folder
- At your `.bashrc`, `.bashprofile`, or `.zshrc` file, add the following lines:

```sh
source [PATH_TO_UWRAPPER_REPO]/uwrapper.sh
```

To add bashcompletion support to autocomplete virtual environment names, add the following after the line above.

```sh
source [PATH_TO_UWRAPPER_REPO]/bashcompletion.sh
```

## Contributions

I am lazy and did not create any sort of automatic installation procedure using `curl` or `wget` although that
would be the ideal way of installing this tool. Any sort of contribution will be reviewed and accepted as long
as the main `uwrapper.sh` file is kept under fifty lines of code and the contribution is meaningful.
