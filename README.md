# Pre-Install
- Install `neovim`
- Install `git`
- Install `gcc`, or any other c compiler

# Quick Install
```
cd ~/.config && git clone -b main --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git nvim/README.md
```

# File Structure
```
~/.config/nvim
├── lua
│   ├── config
│   │   └── lazy.lua
│   └── plugins
│       ├── LSP.lua
│       ├── UI.lua
│       ├── UX.lua
│       ├── autosuggestion.lua
│       └── git.lua
└── init.lua
```
