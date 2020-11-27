{ pkgs, ... }:

{
  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
  nixpkgs.config.allowUnfree = true;
#  nix.binaryCaches = [ "https://juliosueiras-nix.nyc3.digitaloceanspaces.com/" ];
#  nix.binaryCachePublicKeys = [ "juliosueiras-nix.nyc3.digitaloceanspaces.com:XZImAjLTulEBonH1jGGidJvljNZCLaQu2z6WvgzBlB0=" ];
}
