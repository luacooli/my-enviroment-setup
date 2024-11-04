# Update system
sudo apt update && sudo apt upgrade -y

# Install zsh
sudo apt install zsh -y
# Set zsh as default shell
chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install 'z' for directory jumping
git clone https://github.com/rupa/z.git ~/.z
echo '. ~/.z/z.sh' >>~/.zshrc

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
# Source NVM script
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Install latest Node.js
nvm install --lts

# Install npx
sudo apt install npm

# Install Terminator
sudo apt install terminator -y

# Install vscode
sudo snap install code --classic
