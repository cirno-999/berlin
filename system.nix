{
  users.users.cirno = {
    isNormalUser = true;
    extraGroups = [
    "wheel"
    "libvirtd"
    "audio"
    "cdrom"
    ]; # Enable ‘sudo’ for the user.
  };
#  users.users.nobody = {
#    isNormalUser = true;
#  };
  system.stateVersion = "20.03"; # Did you read the comment?
  environment.variables = { EDITOR = "alacritty -e vim"; BROWSER = "firefox"; };
}
