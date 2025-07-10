{ config, lib, pkgs, ... }:

{
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };
}
