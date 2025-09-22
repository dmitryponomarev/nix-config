{
  lib,
  config,
  ...
}:
{
  plugins = {
    grug-far = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>rg";
      action = "<cmd>GrugFar<CR>";
      options = {
        desc = "GrugFar toggle";
      };
    }
  ];
}
