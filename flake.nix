{
  inputs = {
    nixpkgs.url = "nixpkgs";

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixos-hardware, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";

      modules = [
        nixos-hardware.nixosModules.raspberry-pi-5
        ./configuration.nix
      ];
    };
  };
}
