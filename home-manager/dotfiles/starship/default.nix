{
  config,
  pkgs,
  lib,
  nix-colors,
  ...
}:
{

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      palette = "catppuccin_mocha";
      command_timeout = 2000;
      add_newline = false;
      line_break = {
        disabled = true;
      };

      aws = {
        style = "bg:peach fg:base";
        format = "[ $profile ]($style)";
        force_display = true;
      };

      username = {
        show_always = false;
        style_user = "#${config.colorScheme.palette.base0E}";
        style_root = "#${config.colorScheme.palette.base0E}";
      };

      hostname = {
        disabled = true;
        ssh_only = false;
        style = "#${config.colorScheme.palette.base09}";
        format = "[ $hostname ]($style)";
      };

      git_branch = {
        style = "#${config.colorScheme.palette.base0B}";
        format = "[ $symbol$branch ]($style)";
      };

      git_status = {
        style = "#${config.colorScheme.palette.base08}";
      };

      cmd_duration = {
        disabled = true;
      };

      kubernetes = {
        disabled = false;
        format = "[ $symbol$context ]($style)";
        style = "bg:teal fg:base";
      };

      directory = {
        format = "[ $path ]($style)";
        truncate_to_repo = false;
        # truncation_length = 3;
        # truncation_symbol = "…/";
        read_only = "🔒";
        style = "#${config.colorScheme.palette.base06}";
        home_symbol = "~";
      };

      palettes.catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };
    };
  };
}
