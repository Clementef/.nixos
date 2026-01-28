{ config, lib, ... }:

{
  users.users.clem = {
    isNormalUser = true;
    description = "clem";
    extraGroups = [ "networkmanager" "wheel" ];
    # packages = with pkgs; [ ];
  };
}