{
  nixConfig = {
    extra-substituters = [ "https://nixos-raspberrypi.cachix.org" ];

    extra-trusted-public-keys = [
      "nixos-raspberrypi.cachix.org-1:4iMO9LXa8BqhU+Rpg6LQKiGa2lsNh/j2oiYLNOQ5sPI="
    ];
  };

  inputs = {
    nixpkgs.url = "nixpkgs";
    nixos-raspberrypi.url = "github:nvmd/nixos-raspberrypi/main";
    vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs =
    {
      nixpkgs,
      nixos-raspberrypi,
      vscode-server,
      ...
    }:
    {
      nixosConfigurations.nixos = nixos-raspberrypi.lib.nixosSystem {
        modules = [
          {
            imports = [ nixos-raspberrypi.nixosModules.raspberry-pi-5.base ];
          }

          vscode-server.nixosModules.default
          ./configuration.nix
        ];
      };
    };
}
