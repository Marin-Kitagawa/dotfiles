# Installing Homebrew
command -p brew 2>/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Installing oh-my-posh via Homebrew
brew tap jandedobbeleer/oh-my-posh
brew install oh-my-posh
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm -f ~/.poshthemes/themes.zip

# View all the themes
for file in ~/.poshthemes/*.omp.json; do echo "$file\n"; oh-my-posh --config $file --shell universal; echo "\n"; done;


# For loading random theme each time a terminal is started
ls ~/.poshthemes > themes.txt
theme=$(cat themes.txt | shuf -n 1)
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/$theme)"
rm themes.txt -f
