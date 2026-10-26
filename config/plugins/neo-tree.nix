{
  plugins.neo-tree = {
    enable = true;
    settings = {
      window.position = "right";
    };
  };

  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      mode = "n";
      options.silent = true;
    }
  ];
}
