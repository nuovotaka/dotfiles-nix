{ ... }:
{
  plugins.mini = {
    enable = true;
    modules = {
      surround = {
        mappings = {
          add = "gsa";
          delete = "gsd";
          find = "gsf";
          find_left = "gsF";
          highlight = "gsh";
          replace = "gsr";
          update_n_lines = "gsn";
        };
      };
      comment = {
        options = {
          custom_commentstring = null;
          ignore_blank_line = false;
          start_of_line = false;
          pad_comment_parts = true;
        };
        mappings = {
          comment = "gc";
          comment_line = "gcc";
          comment_visual = "gc";
          textobject = "gc";
        };
      };
      pairs = {
        modes = {
          insert = true;
          command = true;
          terminal = false;
        };
        mappings = {
          "(" = {
            action = "open";
            pair = "()";
            neigh_pattern = "[^\\].";
          };
          "[" = {
            action = "open";
            pair = "[]";
            neigh_pattern = "[^\\].";
          };
          "{" = {
            action = "open";
            pair = "{}";
            neigh_pattern = "[^\\].";
          };
          ")" = {
            action = "close";
            pair = "()";
            neigh_pattern = "[^\\].";
          };
          "]" = {
            action = "close";
            pair = "[]";
            neigh_pattern = "[^\\].";
          };
          "}" = {
            action = "close";
            pair = "{}";
            neigh_pattern = "[^\\].";
          };
          "\"" = {
            action = "closeopen";
            pair = "\"\"";
            neigh_pattern = "[^\\].";
            register = {
              cr = false;
            };
          };
          "'" = {
            action = "closeopen";
            pair = "''";
            neigh_pattern = "[^\\]%w";
            register = {
              cr = false;
            };
          };
          "`" = {
            action = "closeopen";
            pair = "``";
            neigh_pattern = "[^\\].";
            register = {
              cr = false;
            };
          };
        };
      };
      ai = {
        n_lines = 50;
        custom_textobjects = null;
      };
    };
  };
}