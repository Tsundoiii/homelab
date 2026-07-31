{
  inputs = {
    nixpkgs.url = "nixpkgs";

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixos-hardware, ... }: {
    nixosConfigurations.homelab = nixpkgs.lib.system {
      system = "aarch64-linux";

      modules = [
        nixos-hardware.nixosModules.raspberry-pi-5
        ./configuration.nix
      ];
    };
  };
}
