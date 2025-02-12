{
  description = "Mi configuración de NixOS asistida por DeepSeek";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Usar nixpkgs inestable
        
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs"; # Usar la misma versión de nixpkgs
    };  
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {

    nixosConfigurations = {
      
      # Configuración para "my-machine"
      my-machine = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./hardware-configuration.nix
          ./hosts/my-machine.nix
          
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.caprisces= import ./modules/home-manager.nix;
          }
          
        ];
      };
    };
  };
}
