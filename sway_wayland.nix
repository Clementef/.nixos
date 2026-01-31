{ config, lib, ... }:

{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
  };

  # enable opengl and vulkan
  hardware.graphics.enable = true;

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  # Enable the XFCE Desktop Environment.
  services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
