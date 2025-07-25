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

    };
  };
}
