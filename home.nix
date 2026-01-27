{ config, pkgs, ... }:

{
  home.username = "clem";
  home.homeDirectory = "/home/clem";

  home.stateVersion = "25.11"; # do not change

  home.packages = with pkgs; [
    hello
    alacritty
  ];

  programs.git = {
    enable = true;
    settings.user.name = "clem";
    settings.user.email = "clem@email.com";
  };

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
