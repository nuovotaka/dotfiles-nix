{ ... }:
{
  plugins.rest = {
    enable = true;
    settings = {
      request = {
        skip_ssl_verification = false;
        hooks = {
          encode_url = true;
          user_agent = "rest.nvim v" + "2.0.1";
          set_content_type = true;
        };
      };
      response = {
        hooks = {
          decode_url = true;
          format = true;
        };
      };
      clients = {
        curl = {
          statistics = [
            {
              id = "time_total";
              winbar = "take";
              title = "Time taken";
            }
            {
              id = "size_download";
              winbar = "size";
              title = "Download size";
            }
          ];
          opts = {
            set_compressed = false;
          };
        };
      };
      cookies = {
        enable = true;
        path = {
          __raw = ''vim.fs.joinpath(vim.fn.stdpath("data"), "rest-nvim.cookies")'';
        };
      };
      env = {
        enable = true;
        pattern = "\\.env$";
      };
      ui = {
        winbar = true;
        keybinds = {
          prev = "H";
          next = "L";
        };
      };
      highlight = {
        enable = true;
        timeout = 750;
      };
      _log_level = {
        __raw = "vim.log.levels.WARN";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>rr";
      action = "<cmd>Rest run<cr>";
      options = {
        desc = "Run request under the cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>rl";
      action = "<cmd>Rest run last<cr>";
      options = {
        desc = "Re-run latest request";
      };
    }
  ];
}