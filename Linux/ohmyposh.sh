sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

# View all the themes
for file in ~/.poshthemes/*.omp.json; do echo "$file\n"; oh-my-posh --config $file --shell universal; echo "\n"; done;


# For loading random theme each time a terminal is started
ls ~/.poshthemes > themes.txt
theme=$(cat themes.txt | shuf -n 1)
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/$theme)"
rm themes.txt
