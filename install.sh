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
}

# Installing functions in the target shell system
UWSHELL_FILE=.profile

if [[ "$SHELL" =~ "zsh$" ]]; then
    UWSHELL_FILE=.zshrc
elif [[ "$SHELL" =~ "bash$" ]]; then
    UWSHELL_FILE=.bashrc
else
    UWSHELL_FILE=.profile
fi

__uw_install $UWSHELL_FILE

echo "Installation complete!"
echo "Copy and paste the command bellow or reopen your terminal"
echo
echo "\tsource $HOME/$UWSHELL_FILE"
echo
