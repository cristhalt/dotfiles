{ inputs, pkgs, ... }: {
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "toml" "catppuccin" ];

    userSettings = {
      ui_font_size = 16;
      ui_font_family = "JetBrainsMono Nerd Font";
      buffer_font_size = 16;
      buffer_font_family = "JetBrainsMono Nerd Font";

      theme = {
        mode = "dark";
        light = "Catppuccin Mocha";
        dark = "Catppuccin Mocha";
      };

      lsp = {
        nixd = {
          binary.path_lookup = true;
          initialization_options = {
            formatting = { command = [ "nixfmt" "--quiet" "--" ]; };
          };
        };
      };

      languages = { Nix = { language_servers = [ "nixd" "!nil" ]; }; };
    };
  };

  home.packages = with pkgs; [ nixfmt-rfc-style nixd ];
  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
}
