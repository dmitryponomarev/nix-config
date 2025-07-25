{
  config,
  pkgs,
  nix-colors,
  ...
}:
{

  programs.wofi = {
    enable = true;
    settings = {
      location = "middle";
      show = "drun";
      width = 900;
      height = 600;
      layer = "overlay";
      insensitive = "true";
    };
    style = ''
      #window {
        animation-name: fadeIn;
        animation-duration: 0.6s;
        background-color: #${config.colorScheme.palette.base00};
        font-family: Fira Code;
        font-size:14;
      }

        #input {
          border: none;
          background-color: #${config.colorScheme.palette.base02};
          color: #${config.colorScheme.palette.base06};
          margin: 4px 4px 8px 4px;
          padding: 8px;
        }

        #inner-box {
          color: #${config.colorScheme.palette.base06};
          border: none;
          border-radius: 0px;
        }

        #outer-box {
          background-color: #${config.colorScheme.palette.base01};
          border: none
          padding: 10px;
          margin: 5px;
        }

        #text {
          color: #${config.colorScheme.palette.base06};
          background-color: transparent;
        }

        #text:selected {
          color: #${config.colorScheme.palette.base06};
        }

        #entry {
          border: none;
          border-radius: 0px;
          padding: 5px 2px 5px 2px;
          margin: 0px 4px 0px 4px;
        }

        #entry:selected {
          border: none;
          color: #${config.colorScheme.palette.base0B};
          background-color: #${config.colorScheme.palette.base02};
          padding: 7px;
        }
    '';
  };
}
