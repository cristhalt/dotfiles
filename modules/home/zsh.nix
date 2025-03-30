{ ... }:
{
  programs.zsh = {
    enable = true;
    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";

    shellAliases = {
      yazi = ''
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
            builtin cd -- "$cwd"
        fi
        rm -f -- "$tmp"
      '';
    };

    antidote = {
      enable = true;
      plugins = [
        ''
          zsh-users/zsh-autosuggestions
        ''
      ];
    };

    initExtra = ''eval "''$(direnv hook zsh)"'';
  };
}
