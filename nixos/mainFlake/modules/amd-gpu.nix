{ config, pkgs, ... }:

{
  # Habilitar los controladores de AMD
  services.xserver.videoDrivers = [ "amdgpu" ];

  # Configuración adicional para mejorar el rendimiento
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true; # Para compatibilidad con aplicaciones de 32 bits
  };

  # Instalar herramientas útiles para AMD
  environment.systemPackages = with pkgs; [
    vulkan-tools
    mesa
    glxinfo
  ];
}
