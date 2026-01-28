{ config, pkgs, ... }:

{
  home.username = "guest";
  home.homeDirectory = "/home/guest";

  home.stateVersion = "25.11"; # do not change

  home.packages = with pkgs; [
    hello
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
