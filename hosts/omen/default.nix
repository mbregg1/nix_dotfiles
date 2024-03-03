{
  user,
  pkgs,
  ...
}: {
  custom-nixos = {
    # xkbLayout = "us";
    nvidia.enable = true;
    zfs.encryption = false;

    bluetooth.enable = true;
    # hotspot = {
    #   enable = true;
    #   internet_iface = "eno1";
    #   wifi_iface = "wlp2s0";
    # };

  # software
    keyd.enable = true;
    distrobox.enable = true;
    syncoid.enable = true;
    bittorrent.enable = true;
    vercel.enable = false; # was true at iynaix config
    virt-manager.enable = false;
    flatpak.enable = true;
    steam.enable = true;
  };

  services.xserver.displayManager.autoLogin.user = user;

  networking.hostId = "aabb4d11"; # required for zfs

  # open ports for devices on the local network
  networking.firewall.extraCommands = ''
    iptables -A nixos-fw -p tcp --source 192.168.1.0/24 -j nixos-fw-accept
  '';
  networking.firewall.allowedTCPPorts = [ 4444 ];
  networking.firewall.allowedUDPPorts = [ 4444 ];

  # networking.firewall.enable = false;
}
