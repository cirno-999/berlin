{ pkgs, ... }:

{
  nixpkgs.overlays = [(self: super: { pkg2zip = self.callPackage ./pkg2zip.nix { }; pcem = self.callPackage ./pcem.nix { }; mygroff = self.callPackage ./groff/default.nix { }; })];
  environment.systemPackages = let
    nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
      export __NV_PRIME_RENDER_OFFLOAD=1
      export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export __VK_LAYER_NV_optimus=NVIDIA_only
      exec -a "$0" "$@"
    '';
  in [
  nvidia-offload
  pkgs.vim
  pkgs.pkg2zip
  pkgs.pcem
  pkgs.firefox
  pkgs.xarchiver
  pkgs.xfce.mousepad
  pkgs.awesome
  pkgs.gcc
  pkgs.scrot
  pkgs.gimp
  pkgs.signal-desktop
  pkgs.filezilla
  pkgs.ntfs3g
  pkgs.mpv
  pkgs.ghc
  pkgs.wine
  pkgs.wine-staging
  pkgs.unzip
  pkgs.mktorrent
  pkgs.git
  pkgs.lsof
  pkgs.wget
  pkgs.p7zip
  pkgs.exfat
  pkgs.ffmpeg
  pkgs.gnuplot
  pkgs.libreoffice
  pkgs.gparted
  pkgs.tdesktop
  pkgs.grim
  pkgs.dolphin
  pkgs.musescore
  pkgs.kid3
  pkgs.chromium
  pkgs.plasma-nm
  pkgs.transmission-gtk
  pkgs.brasero
  pkgs.python3
  pkgs.file
  pkgs.kdeApplications.dolphin-plugins
  pkgs.ark
  pkgs.neofetch
  pkgs.obs-studio
  pkgs.whipper
  pkgs.htop
  pkgs.kdeApplications.okular
  pkgs.pciutils
  pkgs.glxinfo
  pkgs.steam
  pkgs.steam-run-native  
  pkgs.appimage-run
  pkgs.lutris
  pkgs.youtube-dl
  pkgs.vlc
  pkgs.audacity
  pkgs.usbutils
  pkgs.krita
  pkgs.godot
  pkgs.virt-manager
  pkgs.spice-gtk
  pkgs.spectacle
  pkgs.monero-gui
  pkgs.alacritty
  pkgs.remmina
  pkgs.youtube-dl
  pkgs.unar
  pkgs.kdenlive
  pkgs.mediainfo
  pkgs.viewnior
  pkgs.mygroff
  pkgs.zathura
  pkgs.clementine
  pkgs.blender
  pkgs.wacomtablet
  pkgs.renpy
  pkgs.atom
  pkgs.gnumake
  ];

  programs.cdemu.enable = true;
  programs.cdemu.gui = true;
  programs.cdemu.image-analyzer = true;
}
