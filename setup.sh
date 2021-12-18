!#/bin/shg
# install homebrew and some useful formulae
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install tree
brew install --cask visual-studio-code
brew install --cask vivaldi
brew install htop

# if shell is not zsh, install it 
if [[ "$SHELL" =~ ".*/zsh" ]]; 
    then :; 
    else 
        echo "--> installing zsh";
        brew install zsh
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~
source .zshrc


# add aliases
cd ~
cp .zshrc .zshrc_back
echo "############## MY ALIASES ##############"
echo 'alias ls="ls -lG"' >> .zshrc
echo 'alias g="git"' >> .zshrc
