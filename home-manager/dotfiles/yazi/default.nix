{ config, pkgs, ... }:
{

  programs.yazi = {
    enable = true;
    plugins = with pkgs.yaziPlugins; {
      git = git;
      # piper = piper;
      ouch = ouch;
      chmod = chmod;
      # jump-to-char = jump-to-char;
    };
    keymap = {
      mgr.prepend_keymap = [
        {
          on = [ "C" ];
          run = "plugin ouch";
          desc = "Compress with ouch";
        }
        {
          on = [
            "c"
            "m"
          ];
          run = "plugin chmod";
          desc = "Chmod on selected files";
        }
      ];
    };
    settings = {

      mgr = {
        ratio = [
          1
          4
          3
        ];
        sort_by = "alphabetical";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "size_and_mtime";
        show_hidden = true;
        show_symlink = true;
      };

      preview = {
        image_filter = "lanczos3";
        image_quality = 90;
        tab_size = 1;
        max_width = 600;
        max_height = 900;
        ueberzug_scale = 1;
        ueberzug_offset = [
          0
          0
          0
          0
        ];
      };
      opener = {
        edit = [
          {
            run = "$EDITOR \"$@\"";
            block = true;
            for = "unix";
          }
        ];
        extract = [
          {
            run = "ouch d -y \"$@\"";
            desc = "Extract here with ouch";
            for = "unix";
          }
        ];

      };
      plugin = {
        prepend_previewers = [
          {
            mime = "application/*zip";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-tar";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-bzip2";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-7z-compressed";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-rar";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-xz";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/xz";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/x-zstd";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/zstd";
            run = "${pkgs.ouch}/bin/ouch";
          }
          {
            mime = "application/java-archive";
            run = "${pkgs.ouch}/bin/ouch";
          }
        ];
      };
    };
  };
}
