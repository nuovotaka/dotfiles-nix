{ ... }:
{
  plugins.neogit = {
    enable = true;
    settings = {
      disable_signs = false;
      disable_hint = false;
      disable_context_highlighting = false;
      disable_commit_confirmation = false;
      disable_builtin_notifications = false;
      disable_insert_on_commit = "auto";
      use_magit_keybindings = false;
      auto_refresh = true;
      sort_branches = "-committerdate";
      kind = "tab";
      console_timeout = 2000;
      auto_show_console = true;
      remember_settings = true;
      use_per_project_settings = true;
      ignored_settings = [
        "NeogitPushPopup--force-with-lease"
        "NeogitPushPopup--force"
        "NeogitPullPopup--rebase"
        "NeogitCommitPopup--allow-empty"
        "NeogitRevertPopup--no-edit"
      ];
      highlight = {
        italic = true;
        bold = true;
        underline = true;
      };
      use_default_keymaps = true;
      commit_editor = {
        kind = "tab";
      };
      commit_select_view = {
        kind = "tab";
      };
      commit_view = {
        kind = "vsplit";
        verify_commit = false;
      };
      log_view = {
        kind = "tab";
      };
      rebase_editor = {
        kind = "auto";
      };
      reflog_view = {
        kind = "tab";
      };
      merge_editor = {
        kind = "auto";
      };
      tag_editor = {
        kind = "auto";
      };
      preview_buffer = {
        kind = "split";
      };
      popup = {
        kind = "split";
      };
      signs = {
        hunk = [ "" "" ];
        item = [ ">" "v" ];
        section = [ ">" "v" ];
      };
      integrations = {
        telescope = true;
        diffview = true;
        fzf_lua = false;
      };
      sections = {
        sequencer = {
          folded = false;
          hidden = false;
        };
        untracked = {
          folded = false;
          hidden = false;
        };
        unstaged = {
          folded = false;
          hidden = false;
        };
        staged = {
          folded = false;
          hidden = false;
        };
        stashes = {
          folded = true;
          hidden = false;
        };
        unpulled_upstream = {
          folded = true;
          hidden = false;
        };
        unmerged_upstream = {
          folded = false;
          hidden = false;
        };
        unpulled_pushRemote = {
          folded = true;
          hidden = false;
        };
        unmerged_pushRemote = {
          folded = false;
          hidden = false;
        };
        recent = {
          folded = true;
          hidden = false;
        };
        rebase = {
          folded = true;
          hidden = false;
        };
      };
      mappings = {
        commit_editor = {
          "q" = "Close";
          "<c-c><c-c>" = "Submit";
          "<c-c><c-k>" = "Abort";
        };
        commit_editor_I = {
          "<c-c><c-c>" = "Submit";
          "<c-c><c-k>" = "Abort";
        };
        rebase_editor = {
          "p" = "Pick";
          "r" = "Reword";
          "e" = "Edit";
          "s" = "Squash";
          "f" = "Fixup";
          "x" = "Execute";
          "d" = "Drop";
          "b" = "Break";
          "q" = "Close";
          "<cr>" = "OpenCommit";
          "gk" = "MoveUp";
          "gj" = "MoveDown";
          "<c-c><c-c>" = "Submit";
          "<c-c><c-k>" = "Abort";
          "[c" = "OpenOrScrollUp";
          "]c" = "OpenOrScrollDown";
        };
        rebase_editor_I = {
          "<c-c><c-c>" = "Submit";
          "<c-c><c-k>" = "Abort";
        };
        finder = {
          "<cr>" = "Select";
          "<c-c>" = "Close";
          "<esc>" = "Close";
          "<c-n>" = "Next";
          "<c-p>" = "Previous";
          "<down>" = "Next";
          "<up>" = "Previous";
          "<tab>" = "MultiselectToggleNext";
          "<s-tab>" = "MultiselectTogglePrevious";
          "<c-j>" = "NOP";
        };
        popup = {
          "?" = "HelpPopup";
          "A" = "CherryPickPopup";
          "D" = "DiffPopup";
          "M" = "RemotePopup";
          "P" = "PushPopup";
          "X" = "ResetPopup";
          "Z" = "StashPopup";
          "b" = "BranchPopup";
          "c" = "CommitPopup";
          "f" = "FetchPopup";
          "l" = "LogPopup";
          "m" = "MergePopup";
          "p" = "PullPopup";
          "r" = "RebasePopup";
          "t" = "TagPopup";
          "v" = "RevertPopup";
          "w" = "WorktreePopup";
        };
        status = {
          "q" = "Close";
          "I" = "InitRepo";
          "1" = "Depth1";
          "2" = "Depth2";
          "3" = "Depth3";
          "4" = "Depth4";
          "<tab>" = "Toggle";
          "x" = "Discard";
          "s" = "Stage";
          "S" = "StageUnstaged";
          "<c-s>" = "StageAll";
          "u" = "Unstage";
          "U" = "UnstageStaged";
          "y" = "ShowRefs";
          "$" = "CommandHistory";
          "Y" = "YankSelected";
          "<c-r>" = "RefreshBuffer";
          "<enter>" = "GoToFile";
          "<c-v>" = "VSplitOpen";
          "<c-x>" = "SplitOpen";
          "<c-t>" = "TabOpen";
          "{" = "GoToPreviousHunkHeader";
          "}" = "GoToNextHunkHeader";
          "[c" = "OpenOrScrollUp";
          "]c" = "OpenOrScrollDown";
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ng";
      action = ":Neogit<CR>";
      options = {
        desc = "Open Neogit";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = ":Neogit commit<CR>";
      options = {
        desc = "Neogit commit";
        silent = true;
      };
    }
  ];
}