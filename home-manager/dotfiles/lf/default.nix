{ config, pkgs, ... }: {

  programs.lf = {
    enable = true;
    settings = {
      hidden = true;
      icons = true;
      preview = true;
      sixel = true;
      ignorecase = true;
      drawbox = true;
      period  = 1;
		};
		commands = {
          open = ''
            ''${{
              case $(file --mime-type "$f" -bL) in
                text/*|application/json) $EDITOR "$f";;
                application/pdf) zathura "$f";;
                video/mp4) vlc "$f";;
                *) xdg-open "$f" ;;
              esac
            }}
          '';
          delete = ''
            ''${{
              ${pkgs.ncurses}/bin/clear; ${pkgs.ncurses}/bin/tput cup $(($(tput lines)/3)); tput bold
              set -f
              ${pkgs.toybox}/bin/printf "%s\n\t" "$fx"
              ${pkgs.toybox}/bin/printf "delete ? [y/N]"
              read ans
              [ $ans = "y" ] && rm -rf -- $fx
            }}
          '';
          mkdir = ''
            ''${{
              printf "Directory Name: "
              read DIR
              ${pkgs.toybox}/bin/mkdir $DIR
            }}
          '';
        };
        # keybindings = {
        #   V = "push :!nvim<space>";
        #   W = ''$setsid -f $TERMINAL >/dev/null 2>&1'';
        #   D = "delete";
        #   "<c-n>" = "mkdir";
        #   "<c-r>" = "reload";
        #   "<enter>" = "shell";
        # };
        # previewer = {
        #   source = "${pkgs.ctpv}/bin/ctpv";
        # };
        # extraConfig = ''
        #   &${pkgs.ctpv}/bin/ctpv -s $id
        #   cmd on-quit %${pkgs.ctpv}/bin/ctpv -e $id
        #   set cleaner ${pkgs.ctpv}/bin/ctpvclear
        #   set shellopts '-eu'
        # '';
      };
  };
}
