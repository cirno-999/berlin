{ pkgs, ... }:

{
  virtualisation.libvirtd.enable = true;
  security.wrappers.spice-client-glib-usb-acl-helper.source =
    "${pkgs.spice-gtk}/bin/spice-client-glib-usb-acl-helper";
  services.printing.enable = true;
  services.teamviewer.enable = true;
  services.flatpak.enable = true;
}
