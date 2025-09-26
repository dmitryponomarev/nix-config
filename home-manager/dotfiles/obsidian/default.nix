{
  config,
  pkgs,
  nix-colors,
  ...
}:
{
  programs.obsidian = {
    enable = true;
    defaultSettings = {
      app = {
        spellcheck = true;
        vimMode = true;
      };
      corePlugins = [
        # "audio-recorder"
        "backlink"
        # "bookmarks"
        # "canvas"
        # "command-palette"
        "daily-notes"
        # "editor-status"
        # "file-explorer"
        # "file-recovery"
        "global-search"
        # "graph"
        # "note-composer"
        # "outgoing-link"
        "outline"
        # "page-preview"
        # "slides"
        # "sync"
        # "switcher"
        # "tag-pane"
        # "templates"
        # "word-count"
      ];
      appearance = {
        # "accentColor" = "#${config.colorScheme.palette.base07}";
        accentColor = "#9a031e";
        baseFontSize = 16;
        interfaceFontFamily = "Fira Code";
        livePreview = false;
        showRibbon = true;
        textFontFamily = "Fira Code";
        theme = "obsidian";
      };
      hotkeys = {
        "command-palette:open" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "P";
          }
        ];
      };
      themes = [
        {
          pkg = pkgs.fetchFromGitHub {
            owner = "AllJavi";
            repo = "material_gruvbox_obsidian";
            rev = "35b5bc1d7f857cecfc87bab4bfe74e3de11f4d11";
            sha256 = "1zq6wk09dq9yba0q1gv86y1adhycl26lz45n7vkq9lqs022gzkk2";
          };
          enable = true;
        }
      ];
    };
    vaults = {
      janis = {
        enable = true;
        target = ".obsidian/main";
      };
    };
  };
}
