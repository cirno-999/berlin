{
  services.xserver.enable = true;
  services.xserver.layout = "pl";
#  services.xserver.displayManager.sddm.enable = true;
  # Enable touchpad support.
  services.xserver.libinput.enable = true;
#  services.xserver.displayManager.defaultSession = "plasma";
  services.xserver.desktopManager.plasma5.enable = true;
}
