{
  config,
  lib,
  pkgs,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.nvidia.acceptLicense = true;

  nix.settings = {
    experimental-features = [
      "flakes"
      "nix-command"
    ];
    use-xdg-base-directories = true;
  };
}
