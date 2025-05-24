{ pkgs, lib, ... }: {
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "catppuccin"
      "catppuccin-icons"
    ];

    userSettings = {
      hour_format = "hour24";
      auto_update = false;
      base_keymap = "JetBrains";

      ui_font_size = 16;
      ui_font_family = "JetBrainsMono Nerd Font";
      buffer_font_size = 16;
      buffer_font_family = "JetBrainsMono Nerd Font";

      theme = {
        mode = "dark";
        light = "Catppuccin Latte";
        dark = "Catppuccin Mocha";
      };

      lsp = {
        rust-analyzer.binary.path = lib.getExe pkgs.rust-analyzer;
        nix.binary.path = lib.getExe pkgs.nixd;
      };
    };
  };
}
