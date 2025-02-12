
{ config, pkgs, ... }:

{
#--------------------------------- fish shell -----------------------------------------
  # Habilitar Fish Shell
  programs.fish.enable = true;
  # Establecer Fish como shell predeterminado para todos los usuarios
  users.defaultUserShell = pkgs.fish;
}
