{ ... }:
{
  plugins.diffview = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gd";
      action = ":DiffviewOpen<CR>";
      options = {
        desc = "Open Diffview";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gh";
      action = ":DiffviewFileHistory<CR>";
      options = {
        desc = "File History";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = ":DiffviewClose<CR>";
      options = {
        desc = "Close Diffview";
        silent = true;
      };
    }
  ];
}