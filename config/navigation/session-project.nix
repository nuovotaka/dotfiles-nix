{
  plugins = {
    persistence = {
      enable = true;
    };
    project-nvim = {
      enable = true;
      enableTelescope = true;
      settings = {
        detection_methods = [ "lsp" "pattern" ];
        patterns = [ ".git" "Makefile" "package.json" "flake.nix" "taskfile.yml" ];
      };
    };
  };

  keymaps = [
    # Persistence (Session)
    {
      mode = "n";
      key = "<leader>qs";
      action = "<cmd>lua require('persistence').load()<cr>";
      options = { desc = "Restore Session for current directory"; };
    }
    {
      mode = "n";
      key = "<leader>ql";
      action = "<cmd>lua require('persistence').load({ last = true })<cr>";
      options = { desc = "Restore Last Session"; };
    }
    {
      mode = "n";
      key = "<leader>qd";
      action = "<cmd>lua require('persistence').stop()<cr>";
      options = { desc = "Don't Save Current Session"; };
    }
    # Project
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>Telescope projects<cr>";
      options = { desc = "Find Projects"; };
    }
  ];
}
