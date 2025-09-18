{
  inputs,
  pkgs,
  ...
}:
{
  home.packages = [ pkgs.hyprpaper ];

  services.hyprpaper =
    let
      horizontalWallpaper = "~/nix-config/wallpapers/wallpaper.png";
    in
    {
      enable = true;
      # package = inputs.hyprpaper.packages.${pkgs.system}.default;
      settings = {
        ipc = true;
        splash = false;
        preload = [
          horizontalWallpaper
        ];
        wallpaper = [
          "HDMI-A-1,${horizontalWallpaper}"
          "DP-1,${horizontalWallpaper}"
          "DP-5,${horizontalWallpaper}"
          "DP-7,${horizontalWallpaper}"
          "eDP-1,${horizontalWallpaper}"
        ];
      };
    };
}
