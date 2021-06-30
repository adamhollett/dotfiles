# dotfiles

![](https://i.imgur.com/uLgp0Iq.gif)

Fork this repo and clone it in your home directory so that you get `~/dotfiles`.

You can add your git identity to `git/.gitconfig`, or place this in a file at `git/id` and it will be included:

```
[user]
  name = Your Name
  email = your@email.com
```

To set everything up:

``` shell
bash setup.sh
```

**Note**: On Windows, you must run the setup script using the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (WSL) or [Git Bash for Windows](https://git-for-windows.github.io).
