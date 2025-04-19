# LazyGit 💤🐙

**The laziest way to push your code.**

LazyGit creates a simple command called `gpush` that:

`git add` everithing, `git commit` your message and `git push` to your repository
<br>
<br>

## 🚀 Installation

Run this command in your terminal:

```bash
curl -s https://raw.githubusercontent.com/rodrigo-fari/LazyGit/main/install.sh | bash
```

## ✅ Usage

After installation, just type:

```sh
gpush
```
You’ll be asked for a commit message, and that’s it!

## ❓ What if gpush doesn’t work right away?

If your terminal says `gpush: command not found`, just run:

```sh
source ~/.bashrc
```
Or if you're using Zsh:
```sh
source ~/.zshrc
```
Or simply restart your terminal.

## 🧼 Uninstall

Delete the gpush file:

```sh
rm ~/.local/bin/gpush
```
And optionally remove the added PATH line from `.bashrc` or `.zshrc`.

### 📄 License

MIT — use freely and lazily 😴

Created with ❤️ by [Rodrigo Fari](https://github.com/rodrigo-fari)
