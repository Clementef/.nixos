{ config, lib, ... }:

{
  users.users.guest = {
    isNormalUser = true;
    description = "guest";
    extraGroups = [ "networkmanager" ];
    # packages = with pkgs; [ ];
  };
}