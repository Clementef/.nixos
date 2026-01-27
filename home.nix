{ config, pkgs, ... }:

{
  home.username = "clem";
  home.homeDirectory = "/home/clem";

  home.stateVersion = "25.11"; # do not change

  home.packages = with pkgs; [
    # fonts
    nerd-fonts.jetbrains-mono

    # languages
    R
    go
    python315

    # cli programs
    hello
    neovim

    # gui programs
    alacritty
    mpv
    zathura
    obsidian
  ];

  programs.git = {
    enable = true;
    settings.user.name = "clem";
    settings.user.email = "clem@email.com";
  };

  home.file = {
    ".config/alacritty".source = ./configs/alacritty;
    ".config/zathura".source = ./configs/zathura;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
