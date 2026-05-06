{ ... }:
{
  plugins.package-info = {
    enable = true;
    settings = {
      icons = {
        enable = true;
        style = {
          up_to_date = "|  ";
          outdated = "|  ";
        };
      };
      autostart = true;
      hide_up_to_date = false;
      hide_unstable_versions = false;
      package_manager = "npm";
    };
  };

  # ハイライトの設定
  highlight = {
    PackageInfoUpToDateVersion = {
      fg = "#3C4048";
    };
    PackageInfoOutdatedVersion = {
      fg = "#d19a66";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ns";
      action = "<cmd>lua require('package-info').show({ force = true })<cr>";
      options = {
        desc = "Show dependency versions";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nc";
      action = "<cmd>lua require('package-info').hide()<cr>";
      options = {
        desc = "Hide dependency versions";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nt";
      action = "<cmd>lua require('package-info').toggle()<cr>";
      options = {
        desc = "Toggle dependency versions";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nu";
      action = "<cmd>lua require('package-info').update()<cr>";
      options = {
        desc = "Update dependency on the line";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nd";
      action = "<cmd>lua require('package-info').delete()<cr>";
      options = {
        desc = "Delete dependency on the line";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ni";
      action = "<cmd>lua require('package-info').install()<cr>";
      options = {
        desc = "Install a new dependency";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>np";
      action = "<cmd>lua require('package-info').change_version()<cr>";
      options = {
        desc = "Install a different dependency version";
        silent = true;
      };
    }
  ];
}