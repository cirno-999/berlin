{ pkgs, ... }:

let
  unstable = import <unstable> {};
in
{
  nixpkgs.overlays = [(self: super: {
  pkg2zip = self.callPackage ./pkg2zip.nix { };
  pcem = self.callPackage ./pcem.nix { };
  torrent7z = self.callPackage ./torrent7z.nix { };
  })];
  environment.systemPackages = let
    nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
      export __NV_PRIME_RENDER_OFFLOAD=1
      export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export __VK_LAYER_NV_optimus=NVIDIA_only
      exec -a "$0" "$@"
    '';
  in [
  unstable.runelite
  unstable.lollypop
  unstable.mgba
  unstable.helvum
  unstable.jdk17_headless
  nvidia-offload
  pkgs.SDL2
  pkgs.freac
  pkgs.libsForQt5.kdeconnect-kde
  pkgs.mangohud
  pkgs.steamcmd
  pkgs.anydesk
  pkgs.ardour
  pkgs.rawtherapee
  pkgs.torrent7z
  pkgs.w3m
  pkgs.imagemagick
  pkgs.vim
  pkgs.pkg2zip
#  pkgs.pcem
  pkgs.firefox
  pkgs.xarchiver
  pkgs.xfce.mousepad
  pkgs.awesome
  pkgs.scrot
  pkgs.gimp-with-plugins
  pkgs.signal-desktop
  pkgs.filezilla
  pkgs.ntfs3g
  pkgs.mpv
  pkgs.ghc
  pkgs.wineWowPackages.stable
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
  pkgs.libsForQt5.dolphin-plugins
  pkgs.ark
  pkgs.neofetch
  pkgs.obs-studio
  pkgs.whipper
  pkgs.htop
  pkgs.okular
  pkgs.pciutils
  pkgs.glxinfo
  pkgs.steam
  pkgs.steam-run-native
  pkgs.appimage-run
  pkgs.youtube-dl
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
  pkgs.groff
  pkgs.zathura
  pkgs.clementine
  pkgs.blender
  pkgs.wacomtablet
  pkgs.renpy
  pkgs.gnumake
  (pkgs.pass.withExtensions (exts: [ exts.pass-otp ]))
#  pkgs.tor-browser-bundle-bin
  pkgs.bochs
  pkgs.winetricks
  pkgs.electrum
  ];

  programs.gnupg.agent.enable = true;

  programs.cdemu.enable = true;
  programs.cdemu.gui = true;
  programs.cdemu.image-analyzer = true;
}
