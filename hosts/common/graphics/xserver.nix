{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "se,ru";
      options = "eurosign:e,caps:escape";
    };
    displayManager.startx.enable = false;
    displayManager.lightdm.enable = true;
  };
  hardware.graphics.enable = true;
}
