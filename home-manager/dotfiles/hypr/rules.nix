{ pkgs, ... }:
{

  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "center, class:^(org.keepassxc.KeePassXC)$"
      "center, class:^(obsidian)$"
      "float, title:^(trans.*)$"
      "float, class:^(org.keepassxc.KeePassXC)$"
      "float, class:^(obsidian)$"
      "size 70% 70%, class:^(org.keepassxc.KeePassXC)$"
      "size 80% 80%, class:^(obsidian)$"
      "stayfocused, title:^()$,class:^(steam)$"
    ];
    layerrule = [
      # "blur, ^(gtk-layer-shell|anyrun|eww|music-widget)$"
    ];
  };
}
