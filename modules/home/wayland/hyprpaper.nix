{ inputs, ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload =
        [ "${inputs.catppuccin-wallpapers}/landscapes/Cloudsnight.jpg" ];
      wallpaper =
        ", ${inputs.catppuccin-wallpapers}/landscapes/Cloudsnight.jpg";
    };
  };
}
