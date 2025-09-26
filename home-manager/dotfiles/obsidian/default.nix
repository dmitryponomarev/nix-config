{
  config,
  pkgs,
  nix-colors,
  ...
}:
{
  programs.obsidian = {
    enable = true;
    # defaultSettings = {
    #   corePlugins = [
    # "audio-recorder"
    # "backlink"
    # "bookmarks"
    # "canvas"
    # "command-palette"
    # "daily-notes"
    # "editor-status"
    # "file-explorer"
    # "file-recovery"
    # "global-search"
    # "graph"
    # "note-composer"
    # "outgoing-link"
    # "outline"
    # "page-preview"
    # "slides"
    # "sync"
    # "switcher"
    # "tag-pane"
    # "templates"
    # "word-count"
    # ];
    #   appearance = {
    #     "accentColor" = "#${config.colorScheme.palette.base08}";
    #     "interfaceFontFamily" = "Fira Code";
    #     "textFontFamily" = "Fira Code";
    #   };
    # };
    # vaults = {
    #   janis = {
    #     enable = true;
    #     target = ".obsidian/main";
    #   };
    # };
  };
}
