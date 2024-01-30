{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [
    ./audio.nix
    ./auth.nix
    ./configuration.nix
    # ./keyd.nix # TODO
    # ./docker.nix
    # ./filezilla.nix
    # ./gnome3.nix # TODO
    ./flatpak.nix
    ./hdds.nix
    ./hyprland.nix
    ./impermanence.nix
    ./nix.nix
    ./nvidia.nix
    ./plasma.nix
    # ./sonarr.nix
    # ./syncoid.nix
    ./transmission.nix
    # ./vercel.nix
    ./minecraft-bedrock-server.nix
    ./minecraft-java-server.nix
    ./virt-manager.nix
    ./steam.nix
    ./zfs.nix
    ./input.nix
    ./bluetooth.nix
    ./hotspot.nix
  ];

  config = {
    # automount disks
    services.gvfs.enable = true;
    # services.devmon.enable = true;

    environment = {
      etc = {
        # git
        "gitconfig".text = config.hm.xdg.configFile."git/config".text;
      };
      variables = {
        TERMINAL = config.hm.custom.terminal.exec;
        EDITOR = "hx";
        VISUAL = "hx";
        NIXPKGS_ALLOW_UNFREE = "1";
        STARSHIP_CONFIG = "${config.hm.xdg.configHome}/starship.toml";
      };

      systemPackages = with pkgs;
        [
          helix
          neovim
          curl
          eza
          killall
          du-dust
          ntfs3g
          procps
          ripgrep
          tree # for root, normal user has an eza alias
          wget
          dig
          lsof
          nmap
          aria2
          inetutils
          htop
          usbutils
          zellij
          efibootmgr
        ]
        ++ (lib.optional (!config.services.xserver.desktopManager.gnome.enable) config.hm.custom.terminal.fakeGnomeTerminal)
        ++ (lib.optional config.custom-nixos.distrobox.enable pkgs.distrobox)
        ++ (lib.optional config.hm.custom.helix.enable helix)
        ++ (lib.optional config.hm.custom.discord.enable vesktop);
    };

    # setup fonts
    fonts.packages = config.hm.custom.fonts.packages;

    # set up programs to use same config as home-manager
    programs.bash = {
      interactiveShellInit = config.hm.programs.bash.initExtra;
      loginShellInit = config.hm.programs.bash.profileExtra;
    };

    # bye bye nano
    programs.nano.enable = lib.mkForce false;

    programs.file-roller.enable = true;

    # use gtk theme on qt apps
    qt = {
      enable = true;
      platformTheme = "gnome";
      style = "adwaita-dark";
    };

    custom-nixos.persist = {
      root.directories = lib.mkIf config.hm.custom.wifi.enable [
        "/etc/NetworkManager"
      ];

      home.directories = [
        ".local/state/wireplumber"
      ];
    };
  };
}
