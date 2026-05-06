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