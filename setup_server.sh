sudo apt update
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y

# install zsh and ohmyzsh
sudo apt-get install zsh -y
sudo chsh -s $(which zsh) $(whoami)


# install docker
sudo apt-get update
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

exec $SHELL

curl -L git.io/antigen > antigen.zsh
echo "source $HOME/antigen.zsh" >> .zshrc
echo "antigen init $HOME/setup_server/.antigenrc" >> .zshrc

exec $SHELL


curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> .zshrc
echo 'eval "$(pyenv init --path)"' >> .zshrc
echo 'eval "$(pyenv virtualenv-init -)"'  >> .zshrc
source $HOME/.zshrc
pyenv install 3.8
pyenv install 3.9
pyenv install 3.10
pyenv install 3.11

curl -sSL https://install.python-poetry.org | python3 -
echo 'export PATH="/home/ubuntu/.local/bin:$PATH"' >> .zshrc
exec $SHELL