{
  inputs,
  pkgs,
  lib,
  ...
}: {
  wayland.windowManager.hyprland.settings = with pkgs; {
    "$mainMod" = "SUPER";
    # "$once-recorder" = "pgrep wf-recorder && killall -s SIGINT wf-recorder || $recorder";
    # "$recorder" = "wf-recorder -x yuv420p -g $(slurp) -f"
    bind = [
      "$mainMod SHIFT, T, layoutmsg, orientationleft"
      "$mainMod SHIFT, W, exec, firefox"
      "$mainMod, A, togglespecialworkspace, board"
      # "$mainMod, C, exec, ${lib.getExe inputs.hyprpicker.packages.${system}.default} --format=hex --autocopy"
      "$mainMod, D, exec, wofi -i -I --show drun"
      "$mainMod, E, exec, keepassxc"
      "$mainMod, F, fullscreen,"
      "$mainMod, P, pin"
      "$mainMod, Q, killactive,"
      "$mainMod, Return, exec, kitty"
      "$mainMod, Space, layoutmsg, swapwithmaster master"
      "$mainMod, T, layoutmsg, orientationtop"
      "$mainMod, Tab, togglespecialworkspace, magic"
      "$mainMod, V, togglefloating,"
      "$mainMod, W, togglespecialworkspace, web"
      "$mainMod, less, exec, cliphist list | wofi -i -I -dmenu | cliphist decode | wl-copy"
      "ALT, H, workspace, m-1"
      "ALT, L, workspace, m+1"
      "ALT, Tab, togglespecialworkspace, magic"
      "CTRL SHIFT, S, exec, grim -g $(slurp) - | swappy -f -"
      # "$mainMod, R, exec, pcmanfm"
      # '', Print, exec, ${lib.getExe grim} -g "$(${lib.getExe slurp})" - | ${lib.getExe satty} -f - --fullscreen --output-filename ~/Pictures/screenshots/$(date '+%Y%m%d-%H:%M:%S').png''
      #
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"
    ];
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
