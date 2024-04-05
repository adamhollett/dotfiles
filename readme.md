# dotfiles

![A shell prompt in many colours](https://user-images.githubusercontent.com/6955296/218800662-8dbe06c3-279b-4f9d-9af5-58bc11f33ed4.gif)

Fork this repo and clone it in your home directory so that you get `~/dotfiles`.

Please explore a little before running the setup script.

The setup script will symlink to your home directory any files in this repo with `.sym` in their name. For example, `/shell/bash/.bashrc.sym` will be symlinked to `~/.bashrc`.

If you have existing configs in these files, please **back them up** as this can overwrite them:

``` shell
./setup.sh
```

**Note**: In Windows, run the setup script using the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (WSL) or [Git Bash for Windows](https://git-for-windows.github.io).

## Identity

You can add your git identity to `git/.gitconfig`, or in a file at `git/id` and it will be included:

``` gitconfig
[user]
  name = Your Name
  email = your@email.com
```
