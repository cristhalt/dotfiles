{ inputs, ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${inputs.catppuccin-wallpapers}/hollow-knight.jpg" ];
      wallpaper = ", ${inputs.catppuccin-wallpapers}/hollow-knight.jpg";
    };
  };
}
