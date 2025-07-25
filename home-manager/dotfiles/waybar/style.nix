{
  config,
  pkgs,
  lib,
  nix-colors,
  ...
}:
let
  colors = {
    black = "#${config.colorScheme.palette.base00}";
    dark_gray = "#${config.colorScheme.palette.base01}";
    medium_gray = "#${config.colorScheme.palette.base02}";
    light_gray = "#${config.colorScheme.palette.base03}";
    darkest_white = "#${config.colorScheme.palette.base04}";
    dark_white = "#${config.colorScheme.palette.base05}";
    light_white = "#${config.colorScheme.palette.base06}";
    white = "#${config.colorScheme.palette.base07}";
    red = "#${config.colorScheme.palette.base08}";
    orange = "#${config.colorScheme.palette.base09}";
    yellow = "#${config.colorScheme.palette.base0A}";
    olive = "#${config.colorScheme.palette.base0B}";
    green = "#${config.colorScheme.palette.base0C}";
    cyan = "#${config.colorScheme.palette.base0D}";
    pink = "#${config.colorScheme.palette.base0E}";
    brown = "#${config.colorScheme.palette.base0F}";
  };
in
{

  programs.waybar.style = with colors; ''
    * {
      border: none;
      border-radius: 0px;
      padding: 0;
      margin: 0;
      font-family: FiraCode;
      font-size: 13;
    }

    window#waybar {
      background-color: rgba(29, 32, 33, 1);
      border-bottom: 0px solid rgba(100, 114, 125, 0.5);
      color: ${light_white};
      transition-property: background-color;
      transition-duration: 0.5s;
    }

    window#waybar.hidden {
      opacity: 0.2;
    }

    button {
      box-shadow: inset 0 -3px transparent;
      border: none;
      border-radius: 0;
    }

    button:hover {
      background: inherit;
      box-shadow: inset 0 -3px #ffffff;
    }

    #workspaces button {
      padding: 0 5px;
      background-color: transparent;
      color: ${light_white};
    }

    #workspaces button:hover {
      background: rgba(0, 0, 0, 0.2);
    }

    #workspaces button.active {
      background-color: ${medium_gray};
      color: ${light_white};
    }

    #workspaces button.urgent {
      background-color: ${red};
    }

    #mode {
      background-color: ${dark_gray};
      border-bottom: 3px solid ${light_white};
    }

    #time {
      background-color: transparent;
    }

    #clock,
    #battery,
    #cpu,
    #memory,
    #disk,
    #temperature,
    #backlight,
    #network,
    #pulseaudio,
    #wireplumber,
    #custom-media,
    #custom-weather,
    #tray,
    #mode,
    #scratchpad {
      padding: 0 0px;
      color: ${light_white};
      margin: 0 7px;
    }

    #window,
    #workspaces {
      margin: 0 4px;
    }

    .modules-left > widget:first-child > #workspaces {
      margin-left: 0;
    }

    .modules-right > widget:last-child > #workspaces {
      margin-right: 0;
    }

    @keyframes blink {
      to {
        background-color: #ffffff;
        color: #000000;
      }
    }

    #battery.critical:not(.charging) {
      background-color: ${red};
      color: ${light_white};
      animation-name: blink;
      animation-duration: 0.5s;
      animation-timing-function: linear;
      animation-iteration-count: infinite;
      animation-direction: alternate;
    }

    label:focus {
      background-color: #000000;
    }

    #temperature.critical {
      background-color: ${red};
    }

    #tray > .passive {
      -gtk-icon-effect: dim;
    }

    #tray > .needs-attention {
      -gtk-icon-effect: highlight;
      background-color: ${red};
    }
  '';
}
