{ ... }:
{
  plugins.dap = {
    enable = true;
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
      dapStopped = {
        text = "▶";
        texthl = "DapStopped";
      };
      dapBreakpointRejected = {
        text = "";
        texthl = "DapBreakpointRejected";
      };
    };
    adapters = {
      executables = {
        lldb = {
          command = "lldb-vscode";
        };
      };
    };
    configurations = {
      rust = [
        {
          name = "Launch";
          type = "lldb";
          request = "launch";
          program = {
            __raw = ''
              function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
              end
            '';
          };
          cwd = ''''${workspaceFolder}'';
          stopOnEntry = false;
          args = { };
        }
      ];
    };
  };

  plugins.dap-ui = {
    enable = true;
  };

  plugins.dap-virtual-text = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>dB";
      action = "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options = {
        desc = "Breakpoint Condition";
      };
    }
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>lua require('dap').toggle_breakpoint()<cr>";
      options = {
        desc = "Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>lua require('dap').continue()<cr>";
      options = {
        desc = "Continue";
      };
    }
    {
      mode = "n";
      key = "<leader>da";
      action = "<cmd>lua require('dap').continue({ before = get_args })<cr>";
      options = {
        desc = "Run with Args";
      };
    }
    {
      mode = "n";
      key = "<leader>dC";
      action = "<cmd>lua require('dap').run_to_cursor()<cr>";
      options = {
        desc = "Run to Cursor";
      };
    }
    {
      mode = "n";
      key = "<leader>dg";
      action = "<cmd>lua require('dap').goto_()<cr>";
      options = {
        desc = "Go to line (no execute)";
      };
    }
    {
      mode = "n";
      key = "<leader>di";
      action = "<cmd>lua require('dap').step_into()<cr>";
      options = {
        desc = "Step Into";
      };
    }
    {
      mode = "n";
      key = "<leader>dj";
      action = "<cmd>lua require('dap').down()<cr>";
      options = {
        desc = "Down";
      };
    }
    {
      mode = "n";
      key = "<leader>dk";
      action = "<cmd>lua require('dap').up()<cr>";
      options = {
        desc = "Up";
      };
    }
    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require('dap').run_last()<cr>";
      options = {
        desc = "Run Last";
      };
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>lua require('dap').step_out()<cr>";
      options = {
        desc = "Step Out";
      };
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = "<cmd>lua require('dap').step_over()<cr>";
      options = {
        desc = "Step Over";
      };
    }
    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options = {
        desc = "Pause";
      };
    }
    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>lua require('dap').repl.toggle()<cr>";
      options = {
        desc = "Toggle REPL";
      };
    }
    {
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>lua require('dap').session()<cr>";
      options = {
        desc = "Session";
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>lua require('dap').terminate()<cr>";
      options = {
        desc = "Terminate";
      };
    }
    {
      mode = "n";
      key = "<leader>dw";
      action = "<cmd>lua require('dap.ui.widgets').hover()<cr>";
      options = {
        desc = "Widgets";
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle({})<cr>";
      options = {
        desc = "Dap UI";
      };
    }
    {
      mode = "n";
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options = {
        desc = "Eval";
      };
    }
    {
      mode = "v";
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options = {
        desc = "Eval";
      };
    }
  ];
}