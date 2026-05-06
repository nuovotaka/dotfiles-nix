{ ... }:
{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>a";
      action.__raw = "function() require('harpoon'):list():add() end";
      options = {
        desc = "Add file to harpoon";
      };
    }
    {
      mode = "n";
      key = "<C-e>";
      action.__raw = "function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end";
      options = {
        desc = "Toggle harpoon menu";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action.__raw = "function() require('harpoon'):list():select(1) end";
      options = {
        desc = "Harpoon file 1";
      };
    }
    {
      mode = "n";
      key = "<C-t>";
      action.__raw = "function() require('harpoon'):list():select(2) end";
      options = {
        desc = "Harpoon file 2";
      };
    }
    {
      mode = "n";
      key = "<C-n>";
      action.__raw = "function() require('harpoon'):list():select(3) end";
      options = {
        desc = "Harpoon file 3";
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action.__raw = "function() require('harpoon'):list():select(4) end";
      options = {
        desc = "Harpoon file 4";
      };
    }
    {
      mode = "n";
      key = "<leader>hm";
      action = ":Telescope harpoon marks<CR>";
      options = {
        desc = "Harpoon marks";
        silent = true;
      };
    }
  ];
}