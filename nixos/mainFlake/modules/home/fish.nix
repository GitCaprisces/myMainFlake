{ config, pkgs, ... }:

{
  # Configuración de Fish Shell
  programs.fish = {
      interactiveShellInit = ''
      # set -g theme_color_scheme dracula  Tema de colores (requiere un tema instalado)
      set -g fish_greeting "¡Bienvenido a Fish Shell!"  # Mensaje de bienvenida
    '';
    plugins = [
      # Plugins de Fish
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish;
      }
      {
        name = "done";
        src = pkgs.fishPlugins.done;
      }
      {
        name = "grc";
        src = pkgs.fishPlugins.grc;
      }
    ];
  };
}
