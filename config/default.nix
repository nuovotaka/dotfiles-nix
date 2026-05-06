{ pkgs, config, lib, ... }:
{
  imports = [
    # Core plugins
    ./core/keymaps.nix
    ./core/treesitter.nix
    ./core/themes.nix
    ./core/web-devicons.nix
    ./core/clipboard.nix
    
    # File management & navigation
    ./navigation/telescope.nix
    ./navigation/neo-tree.nix
    ./navigation/harpoon.nix
    ./navigation/oil.nix
    ./navigation/yazi.nix
    
    # UI & appearance
    ./ui/alpha.nix
    ./ui/dressing.nix
    ./ui/indent-blankline.nix
    ./ui/colorizer.nix
    ./ui/bufferline.nix
    ./ui/lualine.nix
    ./ui/notify.nix
    ./ui/noice.nix
    ./ui/neoscroll.nix
    ./ui/zen-mode.nix
    ./ui/smear-cursor.nix
    
    # Editing & navigation
    ./editing/flash.nix
    ./editing/mini.nix
    ./editing/yanky.nix
    ./editing/autopairs.nix
    ./editing/tmux-navigator.nix
    ./editing/ts-comments.nix
    ./editing/treesj.nix
    
    # LSP & completion
    ./lsp/blink-cmp.nix
    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/typescript-tools.nix
    ./lsp/aerial.nix
    ./lsp/barbecue.nix
    
    # Git integration
    ./git/gitsigns.nix
    ./git/diffview.nix
    ./git/neogit.nix
    
    # Development tools
    ./development/trouble.nix
    ./development/spectre.nix
    ./development/neotest.nix
    ./development/dap.nix
    ./development/rest.nix
    ./development/package-info.nix
    ./development/dbee.nix
    ./development/crates.nix
    ./development/nix-develop.nix
    ./development/kulala.nix
    ./development/opencode.nix
    ./development/windsurf-vim.nix
    
    # Terminal & utilities
    ./terminal/toggleterm.nix
    ./terminal/whichkey.nix
    ./terminal/snacks.nix
    ./terminal/autosave.nix
    ./terminal/wtf.nix
    ./terminal/timerly.nix
    
    # Language specific
    ./language/markdown.nix
    # ./language/rustaceanvim.nix
  ];

  # リーダーキーの設定
  globals.mapleader = " ";

  extraPlugins = with pkgs.vimPlugins; [
    blink-ripgrep-nvim
  ];

  # 基本的なVimオプション
  opts = {
    number = true;
    colorcolumn = "80";
    relativenumber = true;
    shiftwidth = 2;
    tabstop = 2;
    wrap = false;
    swapfile = false;
    backup = false;
    undofile = true;
    hlsearch = false;
    incsearch = true;
    termguicolors = true;
    scrolloff = 8;
    signcolumn = "yes";
    updatetime = 50;
    foldlevelstart = 99;
  };
}
