{
  description = "My NIX config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:dc-tec/nixvim";

    # nix-colors
    nix-colors.url = "github:misterio77/nix-colors";

    # Sops
    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      sops-nix,
      nix-colors,
      ...
    }@inputs:
    let
      inherit (self) outputs;
    in
    {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake .#your-hostname'
      nixosConfigurations = {
        homelaptop = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [
            ./hosts/homelaptop
            sops-nix.nixosModules.sops
          ];
        };
        homepc = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [
            ./hosts/homepc
            sops-nix.nixosModules.sops
          ];
        };
        kvm = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [
            ./hosts/kvm
            sops-nix.nixosModules.sops
          ];
        };
      };

      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {
        "dmpo@homelaptop" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [ ./home-manager/homelaptop.nix ];
        };
        "dmpo@homepc" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [ ./home-manager/homepc.nix ];
        };
        "dmpo@kvm" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = {
            inherit inputs outputs;
            inherit nix-colors;
          };
          modules = [ ./home-manager/kvm.nix ];
        };
      };
    };
}
