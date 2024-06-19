# Dotfiles

Presets that make anywhere feel like `$HOME`

## Getting Started

### Install Oh My Zsh

Install Zsh and [Oh My Zsh](https://ohmyz.sh/).

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Inspect the install script
git clone https://github.com/ohmyzsh/ohmyzsh.git
vim ./tools/install.sh

# Change the default shell to /bin/zsh
sudo chsh -s /bin/zsh "$USER"
```

### Generate SSH Key

Use `ssh-keygen` to generate a new SSH key.

```sh
# Set to username@hostname[.home|local]
read KEY_COMMENT

ssh-keygen -o -a 256 -t ed25519 -C "$KEY_COMMENT"
```

#### Add SSH Key to GitHub

You must add the new SSH key to GitHub in order to clone this repository and private repositories. Visit https://github.com/settings/keys or use the [GitHub CLI](https://cli.github.com/manual/) to add the key.

```sh
# Don't add your SSH key yet!
gh auth login -s write:public_key -s codespace

gh ssh-key add ~/.ssh/id_ed25519.pub --title "$KEY_COMMENT"
```

### Install (these) Dotfiles

Clone this repo and install my dotfiles using `./install.sh`.

```sh
git clone git@github.com:andikaleonardo/dotfiles.git

cd dotfiles
./install.sh
```
