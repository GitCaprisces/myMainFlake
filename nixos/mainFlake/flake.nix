{
  description = "Mi configuración de NixOS asistida por DeepSeek";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Usar nixpkgs inestable
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      # Configuración para "my-machine"
      my-machine = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./hardware-configuration.nix
          ./hosts/my-machine.nix
        ];
      };
    };
  };
}
