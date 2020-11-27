{
  networking.wg-quick.interfaces = {
    wg0 = {
      address = [ "10.0.0.2/24" "fcd9:281f:04d7:9ee9::2/64" ];
      dns = [ "10.0.0.1" "fcd9:281f:04d7:9ee9::1" ];
      privateKeyFile = "/etc/secrets/wireguard/private";
      
      peers = [
        { # reimu
          publicKey = builtins.readFile /etc/secrets/wireguard/public_reimu;
          allowedIPs = [ "0.0.0.0/0" "::/0" ];
          endpoint = builtins.readFile /etc/secrets/wireguard/endpoint;
          persistentKeepalive = 25;
        }
      ];
    };
  };
  networking.nameservers = [ "10.0.0.1" ];
}
