{
  networking.hostName = "berlin"; # Define your hostname.
  networking.networkmanager.enable = true;
  networking.interfaces.enp3s0.useDHCP = true;
  networking.interfaces.wlp2s0.useDHCP = true;
  networking.firewall.enable = true;
}
