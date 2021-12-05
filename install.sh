APT_GET_CMD=(which apt-get)
YAY_CMD=(which yay)
BREW_CMD=(which brew)

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    echo "Linux"

    if [[ ! -z $APT_GET_CMD ]]; then

        echo "[apt-get] Installing fzf"
        yes | apt-get fzf
        echo "[apt-get] Installing Nerd Font"
        git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
        cd nerd-fonts
        ./install.sh
    elif [[ ! -z $YAY_CMD ]]; then
        echo "[yay] Installing fzf"
        yay -Sy fzf
        echo "[yay] Installing Nerd Font"
        yay -Sy nerd-fonts-complete

    else
        echo "Fail to find the correct package manager"
        exit 1
    fi

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "MacOS"
    if [[ ! -z $BREW_CMD ]]; then
        echo "[Mac] Installing fzf"
        brew install fzf
        echo "[Mac] Installing Nerd Font"
        brew tap homebrew/cask-fonts
        brew install --cask font-hack-nerd-font
    else
        "Brew is not installed"
        exit 1
    fi
else
    echo "Unknow OS"
    exit 1
fi
