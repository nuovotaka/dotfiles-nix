{ ... }:
{
  plugins.trouble = {
    enable = true;
    settings = {
      position = "bottom";
      height = 10;
      width = 50;
      icons = {
        error = "";
        warning = "";
        hint = "";
        information = "";
        other = "";
      };
      mode = "workspace_diagnostics";
      severity = null;
      fold_open = "";
      fold_closed = "";
      group = true;
      padding = true;
      cycle_results = true;
      action_keys = {
        close = "q";
        cancel = "<esc>";
        refresh = "r";
        jump = [ "<cr>" "<tab>" "<2-leftmouse>" ];
        open_split = [ "<c-x>" ];
        open_vsplit = [ "<c-v>" ];
        open_tab = [ "<c-t>" ];
        jump_close = [ "o" ];
        toggle_mode = "m";
        switch_severity = "s";
        toggle_preview = "P";
        hover = "K";
        preview = "p";
        open_code_href = "c";
        close_folds = [ "zM" "zm" ];
        open_folds = [ "zR" "zr" ];
        toggle_fold = [ "zA" "za" ];
        previous = "k";
        next = "j";
        help = "?";
      };
      multiline = true;
      indent_lines = true;
      win_config = {
        border = "single";
      };
      auto_open = false;
      auto_close = false;
      auto_preview = true;
      auto_fold = false;
      auto_jump = false;
      include_declaration = [
        "lsp_references"
        "lsp_implementations"
        "lsp_definitions"
      ];
      signs = {
        error = "";
        warning = "";
        hint = "";
        information = "";
        other = "";
      };
      use_diagnostic_signs = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options = {
        desc = "Buffer Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options = {
        desc = "Symbols (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options = {
        desc = "LSP Definitions / references / ... (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options = {
        desc = "Location List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options = {
        desc = "Quickfix List (Trouble)";
      };
    }
  ];
}