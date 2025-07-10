{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      vim = "nvim";
      lf = "yy";
    };

    histSize = 1000000;
    histFile = "$HOME/.zsh_history";
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

}
