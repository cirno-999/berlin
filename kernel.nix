{ pkgs, ... }:

{
  boot.kernel.sysctl = {
    "vm.dirty_background_bytes" = 50000000;
    "vm.dirty_bytes"            = 300000000;
    "vm.swappiness"             = 10;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
