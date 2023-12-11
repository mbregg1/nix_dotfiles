{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [
    # ./audio.nix
    ./auth.nix
    ./configuration.nix
    # ./docker.nix
    # ./filezilla.nix
    # ./gnome3.nix
    ./hdds.nix
    ./hyprland.nix # TODO!!!
    ./impermanence.nix
    # ./kanata.nix
    ./nix.nix
    ./nvidia.nix
    # ./sonarr.nix
    ./sops.nix
    # ./syncoid.nix
    # ./transmission.nix
    # ./vercel.nix
    # ./virt-manager.nix
    ./zfs.nix
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
        TERMINAL = config.hm.rot.terminal.exec;
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
          aria2
          htop
          zellij
          efibootmgr
        ]
        ++ (lib.optional (!config.services.xserver.desktopManager.gnome.enable) config.hm.rot.terminal.fakeGnomeTerminal)
        ++ (lib.optional config.rot-nixos.distrobox.enable pkgs.distrobox)
        ++ (lib.optional config.hm.rot.helix.enable helix);
    };

    # setup fonts
    fonts.packages = config.hm.rot.fonts.packages;

    # set up programs to use same config as home-manager
    programs.bash = {
      interactiveShellInit = config.hm.programs.bash.initExtra;
      loginShellInit = config.hm.programs.bash.profileExtra;
    };

    # bye bye nano
    programs.nano.enable = lib.mkForce false;

    programs.file-roller.enable = true;

    rot-nixos.persist = {
      root.directories = lib.mkIf config.hm.rot.wifi.enable [
        "/etc/NetworkManager"
      ];

      home.directories = [
        ".local/state/wireplumber"
      ];
    };
  };
}