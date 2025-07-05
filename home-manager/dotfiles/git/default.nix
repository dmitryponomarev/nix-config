{ config, pkgs, ... }: {

  programs.git = {
    enable = true;
    difftastic.enable = true;
    difftastic.enableAsDifftool = true;
    userEmail = "dmitry.s.ponomarev@gmail.com";
    userName = "dmitryponomarev";
  };
  programs.gitui.enable = true;
}
