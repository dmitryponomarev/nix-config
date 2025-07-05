{ config, pkgs, ... }: {

  programs.swaylock = {
    enable = true;
    settings = {
      color = "000000";
      line-color = "000000";
      indicator-radius = 100;
      indicator-idle-visible = false;
      font-size = 24;
      show-failed-attempts = true;
    };
  };
}
