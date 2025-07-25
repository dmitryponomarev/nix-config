{
  config,
  pkgs,
  nix-colors,
  ...
}:
{

  services.mako = {
    enable = true;
    settings = {
      layer = "top";
      anchor = "top-right";
      background-color = "#${config.colorScheme.palette.base00}";
      border-color = "#${config.colorScheme.palette.base02}";
      text-color = "#${config.colorScheme.palette.base06}";
      width = 500;
      height = 200;
      margin = 20;
      font = "FiraCode 1o";
    };
  };
}
