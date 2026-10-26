{ myLib, ... }:
{
  plugins.floaterm.enable = true;
  keymaps = [
    {
      key = "<leader>af";
      action = "<cmd>FloatermNew --height=40 --width=180 lazygit<cr>";
      mode = "n";
      options.silent = true;
    }
    {
      key = "<leader>ay";
      action = "<cmd>FloatermNew --height=40 --width=175 yazi<cr>";
      mode = "n";
      options.silent = true;
    }
  ];
}
