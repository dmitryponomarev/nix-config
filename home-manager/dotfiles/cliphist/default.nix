{ config, pkgs, ... }: {

  services.cliphist = {
    enable = true;
    allowImages = true;
      extraOptions = [
        "-max-items" "10000"
    ];
  };
}
