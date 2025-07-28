{ config, pkgs, ... }: {

  programs.swaylock = {
    package = pkgs.swaylock-effects;
    enable = true;
    settings = {
      image = ../../../wallpapers/wallpaper.png;
      effect-greyscale = true;
      effect-vignette = "0.3:0.8";
      effect-blur = "3x3";
    };
  };
}
