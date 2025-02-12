{ config, pkgs, ... }:

{
  networking.hostName = "my-machine";
  networking.networkmanager.enable = true;
}
