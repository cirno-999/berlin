{ pkgs, ... }:

{
  virtualisation.libvirtd.enable = true;
#  security.wrappers.spice-client-glib-usb-acl-helper.source ="${pkgs.spice-gtk}/bin/spice-client-glib-usb-acl-helper";
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.brlaser pkgs.brlaser pkgs.brgenml1cupswrapper pkgs.gutenprint ];
  services.teamviewer.enable = true;
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  services.xserver.wacom.enable = true;
  programs.adb.enable = true;
  users.users.cirno.extraGroups = ["adbusers"];
}
