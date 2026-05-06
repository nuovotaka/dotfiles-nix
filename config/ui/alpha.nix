{ ... }:
{
  plugins.alpha = {
    enable = true;
    settings = {
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [
            "                                                     "
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ "
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ "
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ "
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ "
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ "
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ "
            "                                                     "
          ];
          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val = [
            {
              type = "button";
              val = "  Find file";
              on_press = {
                __raw = "function() require('telescope.builtin').find_files() end";
              };
              opts = {
                shortcut = "f";
                keymap = [ "n" "f" "<cmd>Telescope find_files<CR>" { noremap = true; silent = true; nowait = true; } ];
                position = "center";
                cursor = 3;
                width = 38;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "button";
              val = "  New file";
              on_press = {
                __raw = "function() vim.cmd[[ene]] end";
              };
              opts = {
                shortcut = "n";
                keymap = [ "n" "n" "<cmd>ene<CR>" { noremap = true; silent = true; nowait = true; } ];
                position = "center";
                cursor = 3;
                width = 38;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "button";
              val = "  Recently used files";
              on_press = {
                __raw = "function() require('telescope.builtin').oldfiles() end";
              };
              opts = {
                shortcut = "r";
                keymap = [ "n" "r" "<cmd>Telescope oldfiles<CR>" { noremap = true; silent = true; nowait = true; } ];
                position = "center";
                cursor = 3;
                width = 38;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "button";
              val = "  Find text";
              on_press = {
                __raw = "function() require('telescope.builtin').live_grep() end";
              };
              opts = {
                shortcut = "t";
                keymap = [ "n" "t" "<cmd>Telescope live_grep<CR>" { noremap = true; silent = true; nowait = true; } ];
                position = "center";
                cursor = 3;
                width = 38;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "button";
              val = "  Quit Neovim";
              on_press = {
                __raw = "function() vim.cmd[[qa]] end";
              };
              opts = {
                shortcut = "q";
                keymap = [ "n" "q" "<cmd>qa<CR>" { noremap = true; silent = true; nowait = true; } ];
                position = "center";
                cursor = 3;
                width = 38;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = "Have fun with Neovim!";
          opts = {
            position = "center";
            hl = "Number";
          };
        }
      ];
    };
  };
}