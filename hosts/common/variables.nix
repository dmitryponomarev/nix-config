{
  config,
  lib,
  pkgs,
  ...
}:

{
  environment.variables.EDITOR = "nvim";
  environment.variables.TERMINAL = "kitty";
  environment.variables.FZF_DEFAULT_COMMAND = "rg --no-ignore --hidden";
  environment.variables.RG_PREFIX = "rg --column  --line-number -i --no-heading --color=always --smart-case";
}
