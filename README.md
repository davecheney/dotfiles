# dotfiles

```
git clone https://github.com/davecheney/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make
```

`make` links tracked files into `$HOME` and never touches untracked files.

- `foo.symlink` is linked to `~/.foo`.
- `home/<path>` is linked to `~/<path>`. Use this for directories such as `~/.claude` that also hold local state. Each file is linked one by one, and the parent directories stay real.

An existing file is moved to `<name>.bak` before it is replaced.
Put secrets and machine-local settings in `~/.zshrc.local` and `~/.gitconfig.local`. These files are not tracked.
