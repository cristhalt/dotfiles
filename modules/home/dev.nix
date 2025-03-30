{ inputs, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "cristhalt";
    userEmail = "203342643+cristhalt@users.noreply.github.com ";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "catppuccin"
      "catppuccin-icons"
    ];

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

      icon_theme = {
        mode = "dark";
        light = "Catppuccin Mocha";
        dark = "Catppuccin Mocha";
      };

      lsp = {
        nixd = {
          binary.path_lookup = true;
          initialization_options = {
            formatting = {
              command = [
                "nixfmt"
                "--quiet"
                "--"
              ];
            };
          };
        };
        rust_analyser = {
          binary.path_lookup = true;
        };
      };

      languages = {
        Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
        };
      };

      load_direnv = "direct";
    };
  };

  home.packages = with pkgs; [
    rust-analyzer
    direnv
    nixfmt-rfc-style
    nixd
  ];
  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
}
