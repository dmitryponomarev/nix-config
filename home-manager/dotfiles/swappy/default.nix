{
  config,
  pkgs,
  nix-colors,
  ...
}: {
  programs.swappy = {
    enable = true;
    settings = {
      default = {
        auto_save = false;
        early_exit = false;
        fill_shape = false;
        line_size = 5;
        paint_mode = "brush";
        save_dir = "$HOME/Pictures/Screenshots";
        save_filename_format = "swappy-%Y%m%d-%H%M%S.png";
        show_panel = false;
        transparancy = 50;
        transparent = false;
      };
    };
  };
}
