{ ... }: {
  programs.zsh = {
    enable = true;
    history.size = 10000;
    history.ignoreAllDups = true;
    history.path = "$HOME/.zsh_history";

    antidote = {
      enable = true;
      plugins = [''
        zsh-users/zsh-autosuggestions
      ''];
    };
  };
}
