{ config, lib, ... }:

# config for xfce desktop manager with i3 window manager

{
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = true;
      xfce = {
        enable = true;
        noDesktop = true;
        enableXfwm = false;
      };
    };
    windowManager.i3.enable = true;
  };
  services.displayManager.defaultSession = "xfce+i3";
}