{
  config,
  pkgs,
  nix-colors,
  ...
}: let
  hints_alphabet = "jfkdlsahgurieowpq";
in {
  programs.kitty = {
    enable = true;
    themeFile = "gruvbox-dark-hard";
    settings = {
      font_family = "Fira Code";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      font_size = 11.0;
      enable_audio_bell = "no";
      window_padding_width = 5;
      confirms_os_window_close = 0;
      background_opacity = 0.8;
      kitty_mod = "ctrl+shift";
      # background = "#${config.colorScheme.palette.base00}";
    };
    keybindings = {
      "kitty_mod+equal" = "change_font_size all 0";
      "kitty_mod+plus" = "change_font_size all +2.0";
      "kitty_mod+minus" = "change_font_size all -2.0";
      "kitty_mod+l" = "kitten hints --type line --program - --alphabet=${hints_alphabet} --hints-text-color=orange";
      "kitty_mod+o" = "kitten hints --type line --program wl-copy --alphabet=${hints_alphabet} --hints-text-color=orange";
      "kitty_mod+p" = "kitten hints --type word --program - --alphabet=${hints_alphabet} --hints-text-color=orange";
      "kitty_mod+u" = "kitten hints --type word --program wl-copy --alphabet=${hints_alphabet} --hints-text-color=orange";
    };
  };
}
