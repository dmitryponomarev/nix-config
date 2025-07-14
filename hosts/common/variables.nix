{ config, lib, pkgs, ... }:

{
  environment.variables.EDITOR = "nvim";
  environment.variables.TERMINAL = "kitty";
  environment.variables.FZF_DEFAULT_COMMAND = "rg --no-ignore --hidden";
}
