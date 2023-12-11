{user, ...}: {
  rot-nixos = {
    # hardware
    hdds = {
      enable = true;
    };
    nvidia.enable = true;
    zfs.encryption = false;

    # software
    distrobox.enable = true;
    syncoid.enable = true;
    bittorrent.enable = true;
    vercel.enable = false; # was true at iynaix config
    virt-manager.enable = true;
  };

  services.xserver.displayManager.autoLogin.user = user;

  networking.hostId = "83efa833"; # required for zfs

  # open ports for devices on the local network
  networking.firewall.extraCommands = ''
    iptables -A nixos-fw -p tcp --source 192.168.1.0/24 -j nixos-fw-accept
  '';
}