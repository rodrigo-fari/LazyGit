#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

cat <<'EOF' > "$INSTALL_DIR/gpush"
#!/bin/bash
git add .
echo -n "Type your commit message: "
read msg
git commit -m "$msg"
git push
EOF

chmod +x "$INSTALL_DIR/gpush"

if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
  echo "✅ Added $INSTALL_DIR to PATH in .bashrc/.zshrc."
fi

echo
echo "✅ LazyGit installed! You can now use the 'gpush' command."

if command -v gpush >/dev/null 2>&1; then
  echo "➡️  Try it now: gpush"
else
  echo "ℹ️  Restart your terminal or run 'source ~/.bashrc' or 'source ~/.zshrc' to activate it."
fi
