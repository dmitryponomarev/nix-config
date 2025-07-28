{
  inputs,
  pkgs,
  ...
}:
{
  programs.wlogout = {
    enable = true;
    package = with pkgs; wlogout;

    layout = [
      {
        label = "lock";
        action = "swaylock";
        text = "Lock screen";
        keybind = "l";
      }
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot";
        keybind = "r";
      }
    ];

    # style = ../dotfiles/wlogout/style.css;
  };
}
