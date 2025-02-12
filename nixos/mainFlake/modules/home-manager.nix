
{ config, pkgs, ... }:

{
  imports = [
    ./home/default.nix
  ]
  # Configuración de Home Manager para el usuario "caprisces"
  home.username = "caprisces";
  home.homeDirectory = "/home/caprisces";
  # Programas adicionales para el usuario
  home.packages = with pkgs; [
  
  ];

  # Estado de Home Manager
  home.stateVersion = "23.11"; # Versión de Home Manager (ajusta según sea necesario)
}
