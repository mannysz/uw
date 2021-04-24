UWSRC=https://raw.githubusercontent.com/mannysz/uw/main
UWFILES="uwrapper.sh bashcompletion.sh uwhelp.txt"

# Defining default install prefix if not set
if [ "$UWDST" = "" ]; then
    UWDST=$HOME/.uw
fi

# Creating the uwrapper destination folder and downloading it
mkdir -p $UWDST
for file in `echo $UWFILES | xargs`; do
    curl $UWSRC/$file -o $UWDST/$file
done

# Install function
__uw_install() {
    echo "" >> $HOME/$1
    echo ". $UWDST/uwrapper.sh" >> $HOME/$1
    echo ". $UWDST/bashcompletion.sh" >> $HOME/$1
    source $HOME/$1
}

# Installing functions in the target shell system
if [[ "$SHELL" =~ "zsh$" ]]; then
    __uw_install .zshrc
elif [[ "$SHELL" =~ "bash$" ]]; then
    __uw_install .bashrc
else
    __uw_install .profile
fi

echo "Installation complete!"
echo

uw -h
