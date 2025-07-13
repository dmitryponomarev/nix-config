{pkgs, ...}: {

  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "center, class:^(org.keepassxc.KeePassXC)$"
      "float, title:^(trans.*)$"
      "float, class:^(org.keepassxc.KeePassXC)$"
      "size 70% 70%, class:^(org.keepassxc.KeePassXC)$"
      "stayfocused, title:^()$,class:^(steam)$"
      "misize 1 1, title:^()$,class:^(steam)$"
    ];
    layerrule = [
      # "blur, ^(gtk-layer-shell|anyrun|eww|music-widget)$"
    ];
  };
}
