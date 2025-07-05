{ config, pkgs, ... }: {

  programs.ncspot = {
    enable = true;
      settings = {
        theme = {
          background = "black";
          primary = "light white";
          title = "green";
          playing = "red";
          playing_selected = "red";
          playing_bg = "black";
          highlight = "light white";
          highlight_bg = "#484848";
          error = "light white";
          error_bg = "red";
          statusbar = "black";
          statusbar_progress = "green";
          statusbar_bg = "green";
          cmdline = "light white";
          cmdline_bg = "white";
          search_match = "light red";
        };
    };
  };
}
