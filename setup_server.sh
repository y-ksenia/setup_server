sudo apt update

# install zsh and ohmyzsh
sudo apt-get install zsh -y
sudo chsh -s $(which zsh) $(whoami)
echo "source $HOME/antigen.zsh" >> .zshrc
echo "antigen init $HOME/.antigenrc" >> .zshrc

# install docker
sudo apt-get update
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

sudo reboot