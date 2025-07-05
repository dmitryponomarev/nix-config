{ config, pkgs, ... }: {

  services.mako = {
    enable = true;
      settings = {
        layer = "top";
        anchor = "top-right";
        background-color = "#000000";
	border-color = "#FFFFFF";
    };
  };
}
