{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [
    inputs.nixvim.packages.x86_64-linux.default
  ];

}
