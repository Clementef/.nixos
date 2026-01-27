{ config, pkgs, ... }:

{
  home.username = "clem";
  home.homeDirectory = "/home/clem";

  home.stateVersion = "25.11"; # do not change

  home.packages = with pkgs; [
    # fonts
    nerd-fonts.jetbrains-mono

    # programs
    hello
    alacritty
  ];

  programs.git = {
    enable = true;
    settings.user.name = "clem";
    settings.user.email = "clem@email.com";
  };

  home.file = {
    ".config/alacritty".source = ./configs/alacritty;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
