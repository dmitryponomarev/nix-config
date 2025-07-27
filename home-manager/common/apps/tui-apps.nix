{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  # home.packages = with pkgs; [
  #   inputs.nixvim.packages.x86_64-linux.default
  # ];

}
