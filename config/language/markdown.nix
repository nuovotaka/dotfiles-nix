{ ... }:
{
  plugins.markdown-preview = {
    enable = true;
    settings = {
      auto_start = 0;
      auto_close = 1;
      refresh_slow = 0;
      command_for_global = 0;
      open_to_the_world = 0;
      open_ip = "";
      browser = "";
      echo_preview_url = 0;
      browserfunc = "";
      markdown_css = "";
      highlight_css = "";
      port = "8080";
      page_title = "「\${name}」";
      filetypes = [ "markdown" ];
      theme = "dark";
      combine_preview = 0;
      combine_preview_auto_refresh = 1;
    };
  };

  plugins.render-markdown = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>mp";
      action = ":MarkdownPreview<CR>";
      options = {
        desc = "Markdown Preview";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ms";
      action = ":MarkdownPreviewStop<CR>";
      options = {
        desc = "Markdown Preview Stop";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>mt";
      action = ":MarkdownPreviewToggle<CR>";
      options = {
        desc = "Markdown Preview Toggle";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>mr";
      action = ":RenderMarkdown toggle<CR>";
      options = {
        desc = "Toggle Markdown Rendering";
        silent = true;
      };
    }
  ];
}