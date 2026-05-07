{
  plugins.grug-far = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ro";
      action = "<cmd>GrugFar<cr>";
      options = { desc = "GrugFar (Search & Replace)"; };
    }
  ];
}
