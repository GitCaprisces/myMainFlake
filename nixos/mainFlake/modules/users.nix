{ config, pkgs, ... }:

{
  users.users.caprisces= {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Permitir sudo
  };
}
