{ ... }:
{
  plugins.neotest = {
    enable = true;
    adapters = {
      bash = {
        enable = true;
      };
      deno = {
        enable = true;
      };
      go = {
        enable = true;
      };
      jest = {
        enable = true;
      };
      playwright = {
        enable = true;
      };
      python = {
        enable = true;
      };
      rust = {
        enable = true;
      };
      vitest = {
        enable = true;
      };
    };
    settings = {
      discovery = {
        enabled = true;
        concurrent = 1;
      };
      running = {
        concurrent = true;
      };
      summary = {
        enabled = true;
        animated = true;
        follow = true;
        expand_errors = true;
        open = "botright vsplit | vertical resize 50";
        mappings = {
          attach = "a";
          clear_marked = "M";
          clear_target = "T";
          debug = "d";
          debug_marked = "D";
          expand = [ "<CR>" "<2-LeftMouse>" ];
          expand_all = "e";
          jumpto = "i";
          mark = "m";
          next_failed = "J";
          output = "o";
          prev_failed = "K";
          run = "r";
          run_marked = "R";
          short = "O";
          stop = "u";
          target = "t";
          watch = "w";
        };
      };
      output = {
        enabled = true;
        open_on_run = "short";
      };
      output_panel = {
        enabled = true;
        open = "botright split | resize 15";
      };
      quickfix = {
        enabled = true;
        open = false;
      };
      status = {
        enabled = true;
        virtual_text = false;
        signs = true;
      };
      strategies = {
        integrated = {
          height = 40;
          width = 120;
        };
      };
      icons = {
        child_indent = "│";
        child_prefix = "├";
        collapsed = "─";
        expanded = "╮";
        failed = "";
        final_child_indent = " ";
        final_child_prefix = "╰";
        non_collapsible = "─";
        notify = "";
        passed = "";
        running = "";
        running_animated = [ "/" "|" "\\" "-" "/" "|" "\\" "-" ];
        skipped = "";
        unknown = "";
        watching = "";
      };
      highlights = {
        adapter_name = "NeotestAdapterName";
        border = "NeotestBorder";
        dir = "NeotestDir";
        expand_marker = "NeotestExpandMarker";
        failed = "NeotestFailed";
        file = "NeotestFile";
        focused = "NeotestFocused";
        indent = "NeotestIndent";
        marked = "NeotestMarked";
        namespace = "NeotestNamespace";
        passed = "NeotestPassed";
        running = "NeotestRunning";
        select_win = "NeotestWinSelect";
        skipped = "NeotestSkipped";
        target = "NeotestTarget";
        test = "NeotestTest";
        unknown = "NeotestUnknown";
        watching = "NeotestWatching";
      };
      floating = {
        border = "rounded";
        max_height = 0.6;
        max_width = 0.6;
        options = { };
      };
      default_strategy = "integrated";
      log_level = 1;
      consumers = { };
      projects = { };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>lua require('neotest').run.run()<cr>";
      options = {
        desc = "Run Test";
      };
    }
    {
      mode = "n";
      key = "<leader>tT";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>";
      options = {
        desc = "Run Test File";
      };
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>";
      options = {
        desc = "Debug Test";
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>lua require('neotest').summary.toggle()<cr>";
      options = {
        desc = "Toggle Summary";
      };
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<cr>";
      options = {
        desc = "Show Output";
      };
    }
    {
      mode = "n";
      key = "<leader>tO";
      action = "<cmd>lua require('neotest').output_panel.toggle()<cr>";
      options = {
        desc = "Toggle Output Panel";
      };
    }
    {
      mode = "n";
      key = "<leader>tS";
      action = "<cmd>lua require('neotest').run.stop()<cr>";
      options = {
        desc = "Stop Test";
      };
    }
  ];
}