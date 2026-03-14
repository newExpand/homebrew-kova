# Homebrew Tap for Kova

[Kova](https://github.com/newExpand/kova) — A native terminal workspace with visual tmux/worktree management and AI agent awareness.

## Install

```bash
brew tap newExpand/kova
brew install --cask kova
xattr -d com.apple.quarantine /Applications/Kova.app
```

> **Note**: The `xattr` step is required because the app is not yet code-signed. This is standard for early-stage open source macOS apps.

## Uninstall

```bash
brew uninstall --cask kova
```

To also remove app data:

```bash
brew uninstall --zap --cask kova
```
