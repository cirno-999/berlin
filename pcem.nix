{ stdenv, fetchzip, pkgs }:
stdenv.mkDerivation {
  name = "pcem";
  src = fetchzip {
    url = "https://pcem-emulator.co.uk/files/PCemV16Linux.tar.gz";
    sha256 = "l3A4tjct26DkS7jmhoylcpfGtXfMg9EIx3owzoQLAaw=";
    stripRoot = false;
  };
  buildInputs = [ pkgs.wxGTK31 pkgs.openal pkgs.SDL2 ];
}
