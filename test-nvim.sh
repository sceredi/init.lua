#!/usr/bin/env bash
set -e

if ! nix build .; then
    echo "Neovim failed to build"
    exit 1
fi

echo "Testing Neovim config..."
if ! result/bin/nvim --headless -c "quitall" 2>/tmp/nvim-errors.txt; then
  echo "Neovim failed to start"
  cat /tmp/nvim-errors.txt
  exit 1
fi

if ! result/bin/nvim --headless ./init.lua -c "quitall" 2>/tmp/nvim-errors.txt; then
  echo "Failed to open file"
  cat /tmp/nvim-errors.txt
  exit 1
fi

echo "Neovim config looks good"
