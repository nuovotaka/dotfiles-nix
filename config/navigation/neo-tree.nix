{ ... }:
{
  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      window = {
        width = 30;
        height = 15;
        auto_expand_width = false;
        mappings = {
          "<space>" = "toggle_node";
          "<2-LeftMouse>" = "open";
          "<cr>" = "open";
          "<esc>" = "cancel";
          "P" = { command = "toggle_preview"; config = { use_float = true; use_image_nvim = true; }; };
          "l" = "focus_preview";
          "S" = "open_split";
          "s" = "open_vsplit";
          "t" = "open_tabnew";
          "w" = "open_with_window_picker";
          "C" = "close_node";
          "z" = "close_all_nodes";
          "a" = {
            command = "add";
            config = {
              show_path = "none";
            };
          };
          "A" = "add_directory";
          "d" = "delete";
          "r" = "rename";
          "y" = "copy_to_clipboard";
          "x" = "cut_to_clipboard";
          "p" = "paste_from_clipboard";
          "c" = "copy";
          "m" = "move";
          "q" = "close_window";
          "R" = "refresh";
          "?" = "show_help";
          "<" = "prev_source";
          ">" = "next_source";
          "i" = "show_file_details";
        };
      };
      buffers = {
        bind_to_cwd = false;
        follow_current_file = {
          enabled = true;
          leave_dirs_open = false;
        };
      };
      filesystem = {
        bind_to_cwd = false;
        follow_current_file = {
          enabled = false;
          leave_dirs_open = false;
        };
        filtered_items = {
          visible = false;
          hide_dotfiles = true;
          hide_gitignored = true;
          hide_hidden = true;
          hide_by_name = [
            ".DS_Store"
            "thumbs.db"
          ];
          hide_by_pattern = [
            "*.meta"
            "*/src/*/tsconfig.json"
          ];
          always_show = [
            ".gitignored"
          ];
          never_show = [ ];
        };
        use_libuv_file_watcher = false;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":Neotree toggle<CR>";
      options = {
        desc = "Toggle Neo-tree";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>E";
      action = ":Neotree focus<CR>";
      options = {
        desc = "Focus Neo-tree";
        silent = true;
      };
    }
  ];
}