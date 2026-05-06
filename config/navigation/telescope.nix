{ pkgs, ... }:
{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
      };
      ui-select = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        prompt_prefix = " ";
        selection_caret = " ";
        path_display = [ "truncate" ];
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        layout_config = {
          bottom_pane = {
            height = 25;
            preview_cutoff = 120;
            prompt_position = "top";
          };
          center = {
            height = 0.4;
            preview_cutoff = 40;
            width = 0.5;
          };
          cursor = {
            height = 0.9;
            preview_cutoff = 40;
            width = 0.8;
          };
          horizontal = {
            height = 0.9;
            preview_cutoff = 120;
            width = 0.8;
          };
          vertical = {
            height = 0.9;
            preview_cutoff = 40;
            width = 0.8;
          };
        };
      };
      pickers = {
        find_files = {
          hidden = true;
        };
        live_grep = {
          additional_args = [ "--hidden" ];
        };
        buffers = {
          previewer = false;
          layout_config = {
            width = 80;
          };
        };
      };
    };
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader>fb" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>fr" = "oldfiles";
      "<leader>fc" = "grep_string";
      "<leader>fm" = "marks";
      "<leader>fk" = "keymaps";
      "<leader>fs" = "lsp_document_symbols";
      "<leader>fS" = "lsp_workspace_symbols";
      "<leader>fd" = "diagnostics";
    };
  };
}