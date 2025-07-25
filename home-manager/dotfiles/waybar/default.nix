{
  config,
  pkgs,
  lib,
  nix-colors,
  ...
}:
{
  imports = [ ./style.nix ];

  programs.waybar = {
    enable = true;
    settings = [
      {

        layer = "top";
        position = "top";
        spacing = 6;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "custom/btc"
        ];
        modules-right = [
          "pulseaudio"
          "disk#root"
          "disk#data"
          "memory"
          "cpu"
          "temperature"
          "battery"
          "clock"
          "tray"
          "custom/power"
        ];
        # modules = {
        "hyprland/workspaces" = {
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          all-outputs = true;
          on-click = "activate";
          sort-by-number = true;
          format = "{name}";
        };
        "custom/power" = {
          on-click = "wlogout";
          format = "☢️";
        };
        "tray" = {
          icon-size = 19;
          spacing = 0;
          tooltip = false;
          show-passive-items = true;
        };
        "clock" = {
          timezone = "Europe/Stockholm";
          spacing = 0;
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format = "📅 {:%Y-%m-%d  ⏰ %H:%M:%S}";
          interval = 1;
        };
        "cpu" = {
          tooltip = false;
          format = "🔥 {usage}%";
        };
        "memory" = {
          format = "🧠 {used:0.1f}G/{total:0.1f}G";
        };
        "disk#root" = {
          path = "/";
          format = "💾 {free}";
        };
        "disk#data" = {
          path = "/data";
          format = "🗄️ {free}";
        };
        "temperature" = {
          critical-threshold = 80;
          format = "🌡️ {temperatureC}°C";
        };
        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "🔋 {capacity}% {icon}";
          format-charging = "🔌 {capacity}%";
          format-plugged = "🔌 {capacity}%";
          format-alt = "{time} {icon}";
        };
        "pulseaudio" = {
          scroll-step = 5;
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{icon} {volume}%";
          format-bluetooth-muted = "🔇 {icon}";
          format-muted = "🔇 {format_source}";
          on-click-middle = "pavucontrol";
          on-click = "$TERMINAL -e pulsemixer";
          on-click-right = "/home/dmpo/.config/waybar/scripts/bt_profile_change.sh";
          format-icons = {
            headphone = "🎧";
            hands-free = "🎧";
            headset = "🎧";
            phone = "";
            portable = "";
            car = "";
            default = [
              "🔊"
              "🔊"
              "🔊"
            ];
          };
        };
        "custom/btc" = {
          tooltip = false;
          format = "💲 {}";
          restart-interval = 30;
          exec = "curl -s 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd' | jq .bitcoin.usd";
        };
        # };
      }
    ];
  };
}
