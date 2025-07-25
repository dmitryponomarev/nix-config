{ config, pkgs, ... }:
{

  programs.eza = {
    enable = true;
    colors = "always";
    enableZshIntegration = false;
  };
}
