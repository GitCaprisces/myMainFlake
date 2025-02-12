
{ config, pkgs, ... }:

{
  # Configuración de idioma, fecha y teclado
  i18n = {
    defaultLocale = "en_US.UTF-8"; # Idioma predeterminado: inglés
    supportedLocales = [ "en_US.UTF-8/UTF-8" "es_MX.UTF-8/UTF-8" ]; # Idiomas soportados
    inputMethod = {
      enabled = "ibus"; # Método de entrada (opcional, para soporte de teclados especiales)
    };
  };

  # Configuración de teclado en español (México)
  services.xserver = {
    layout = "latam"; # Distribución de teclado para español (México)
    xkbVariant = "";  # Variante del teclado (dejar vacío para la predeterminada)
  };

  # Configuración de zona horaria
  time.timeZone = "America/Mexico_City"; # Zona horaria de México

  # Habilitar el servidor SSH
  services.openssh.enable = true;
  
  imports = [
    ./modules
  ];

  # Configuración común para todos los hosts
  environment.systemPackages = with pkgs; [
    helix
    git
    htop
  ];
}
