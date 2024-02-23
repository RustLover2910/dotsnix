{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    eza # ls replacement
    fzf # fuzzy finder
    go
    openjdk17-bootstrap # for minecraft
    filelight # disk usage analyzer
    wl-screenrec
    gimp
    wf-recorder
    lazygit
    font-manager
    gnome.gnome-tweaks
    openvpn
    libreoffice
    bitwarden-cli
    nitch # systhem fetch util
    du-dust # disk space visualizer
    zoxide # faster cd
    pipx # Install Python applications in isolated environments
    prismlauncher # minecraft launcher
    ripgrep # grep replacement
    todo # cli todo list
    toipe # typing test in the terminala
    notesnook # note taking app
    yazi # terminal file manager
    yt-dlp # yt vid downloader

    # C / C++
    gcc
    grc
    gnumake

    bleachbit # cache cleaner
    cmatrix
    qbittorrent-qt5 #torrent
    gparted # partition manager
    ffmpeg
    swaylock-effects

    vlc
    cinnamon.nemo-with-extensions # file manager
    floorp # firefox fork
    kitty
    #imv # image viewer
    libnotify
    spicetify-cli
    hyprpicker # color picker
    cliphist # clipboard manager
    wl-clipboard
    obs-studio
    vscodium
    man-pages # extra man pages
    mpv # video player
    ncdu # disk space
    # openssl
    pamixer # pulseaudio command line mixer
    pavucontrol # pulseaudio volume controle (GUI)
    playerctl # controller for media players
    qalculate-gtk # calculator
    unzip
    translate-shell
    zoom-us
    nix-search-cli
    wget
    telegram-desktop
    xdg-utils
    inputs.alejandra.defaultPackage.${system} #formator
    inputs.RustLover.packages.${system}.default #nvim-neve
    #inputs.hyprland-contrib.packages.${pkgs.system}.grimblast #grimblast

    polkit_gnome #polkit gnome
    powertop
    htop

    speedtest-rs #speedtest
  ];
}
