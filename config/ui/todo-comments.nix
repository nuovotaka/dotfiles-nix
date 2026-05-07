{
  plugins.todo-comments = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>TodoTelescope<cr>";
      options = { desc = "Find Todo"; };
    }
    {
      mode = "n";
      key = "<leader>xt";
      action = "<cmd>TodoTrouble<cr>";
      options = { desc = "Todo (Trouble)"; };
    }
  ];
}
