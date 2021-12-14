{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nix.nix
      ./kernel.nix
      ./bootloader.nix
      ./services.nix
      ./networking.nix
      ./sound.nix
      ./graphics.nix
      ./xserver.nix
      ./internationalization.nix
      ./system.nix
      ./fonts.nix
      ./packages.nix
      ./samba.nix
#      ./wireguard.nix
    ];
}

