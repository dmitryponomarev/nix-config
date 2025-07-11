{ config, pkgs, ... }: {

  programs.zsh = {
    enable = true;
    autocd = true;
    history.extended = true;
    history.findNoDups = true;
    initContent = ''
      function yy() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="$tmp"
      	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
          builtin cd -- "$cwd"
        fi
        rm -f -- "$tmp"
      }
      '';
  };
}
