{ ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${./wallpapers/dragon.jpg}" ];
      wallpaper = [ ", ${./wallpapers/dragon.jpg}" ];
    };
  };
}
