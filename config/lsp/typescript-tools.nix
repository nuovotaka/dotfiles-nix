{ ... }:
{
  plugins.typescript-tools = {
    enable = true;
    settings = {
      separate_diagnostic_server = true;
      publish_diagnostic_on = "insert_leave";
      expose_as_code_action = "all";
      tsserver_path = null;
      tsserver_plugins = [ ];
      tsserver_max_memory = "auto";
      tsserver_format_options = { };
      tsserver_file_preferences = { };
      tsserver_locale = "en";
      complete_function_calls = false;
      include_completions_with_insert_text = true;
      code_lens = "off";
      disable_member_code_lens = true;
      jsx_close_tag = {
        enable = false;
        filetypes = [ "javascriptreact" "typescriptreact" ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tso";
      action = ":TSToolsOrganizeImports<cr>";
      options = {
        desc = "Organize Imports";
      };
    }
    {
      mode = "n";
      key = "<leader>tss";
      action = ":TSToolsSortImports<cr>";
      options = {
        desc = "Sort Imports";
      };
    }
    {
      mode = "n";
      key = "<leader>tsr";
      action = ":TSToolsRemoveUnusedImports<cr>";
      options = {
        desc = "Remove Unused Imports";
      };
    }
    {
      mode = "n";
      key = "<leader>tsd";
      action = ":TSToolsGoToSourceDefinition<cr>";
      options = {
        desc = "Go to Source Definition";
      };
    }
    {
      mode = "n";
      key = "<leader>tsR";
      action = ":TSToolsRenameFile<cr>";
      options = {
        desc = "Rename File";
      };
    }
    {
      mode = "n";
      key = "<leader>tsf";
      action = ":TSToolsFileReferences<cr>";
      options = {
        desc = "File References";
      };
    }
  ];
}