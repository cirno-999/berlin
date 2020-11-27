{ stdenv, fetchFromGitHub }:
stdenv.mkDerivation {
  name = "pkg2zip";
  src = fetchFromGitHub {
    owner = "lusid1";
    repo = "pkg2zip";
    rev = "67b84e60e590ec0ed5108f073ca9d84a518bf4c3";
    sha256 = "1kznkra6kf40n9ly0ag5fadi3qgid40npdgk7mrxicniw3zmsxw0";
  };
  installPhase = "mkdir -p $out/bin; cp pkg2zip $out/bin";
}

