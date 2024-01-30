{
  config,
  pkgs,
  lib,
  ...
}: {
  config = lib.mkIf config.custom-nixos.steam.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
    environment.systemPackages = with pkgs; [
      steam

      steamcmd
      steam-tui
      gcc
      cxxtools
      libcxx
      libgcc
      openssl
      nghttp2
      rtmpdump
      libpsl
      curl
      krb5
      keyutils
    ];
    custom-nixos.persist = {
      home.directories = [
        ".local/share/Steam"
      ];
    };
  };
}
