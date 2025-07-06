{ config, lib, pkgs, ... }:

{
  imports =
    [
      #(import "${home-manager}/nixos")
    ];

  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Stockholm";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "sv-latin1";
  };

  # Enable sound.
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dmpo = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; #htop Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    noto-fonts
    noto-fonts-emoji
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.nvidia.acceptLicense = true;

  environment.variables.EDITOR = "nvim";

  environment.systemPackages = with pkgs; [
    git
    kitty
    home-manager
    croc
    fzf
    htop
    wget
    btop
    neovim
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      vim = "nvim";
      lf = "yy";
    };

    histSize = 1000000;
    histFile = "$HOME/.zsh_history";
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  nix.settings = {
    experimental-features = [ "flakes" "nix-command" ];
  };

  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = false;

  system.stateVersion = "25.05"; # Did you read the comment?

}

