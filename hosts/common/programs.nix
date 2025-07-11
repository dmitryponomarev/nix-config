{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      cal = "cal -m --iso -w -y";
      cb = "chatblade -i -c 4o";
      cls = "clear";
      essh = "nvim ~/.ssh/config";
      grep = "rg";
      hosts = "sudo nvim /etc/hosts";
      lf = "yy";
      ls = "eza -la --group-directories-first --sort=name --time-style=long-iso";
      rm = "rm -rf";
      vim = "nvim";
    };

    histSize = 1000000;
    histFile = "$HOME/.zsh_history";
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

}
