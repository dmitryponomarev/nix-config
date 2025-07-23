{
  config,
  lib,
  pkgs,
  ...
}:

{
  environment = {
    variables = {
      EDITOR = "nvim";
      TERMINAL = "kitty";
      FZF_DEFAULT_COMMAND = "rg --no-ignore --hidden";
      RG_PREFIX = "rg --column  --line-number -i --no-heading --color=always --smart-case";
    };
  };
}
