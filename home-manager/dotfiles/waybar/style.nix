{
  config,
  pkgs,
  lib,
  nix-colors,
  ...
}:
let
  custom = {
    font = "#${config.colorScheme.palette.base07}";
  };
in
{

  programs.waybar.style = with custom; ''
    #workspaces button {
      padding: 0 5px;
      background-color: transparent;
      color: ${font};
    }

    #workspaces button.active {
      background-color: transparent;
      color: ${font};
    }
  ''
  };
}
