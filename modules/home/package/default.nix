{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    eza # ls replacement
    fzf # fuzzy finder
    go

    #chromium
    ungoogled-chromium
    inkscape

    openjdk17-bootstrap # for minecraft
    prismlauncher #minecraft

    filelight # disk usage analyzer
    gparted
    cinnamon.nemo-with-extensions # file manager

    font-manager
    gnome.gnome-tweaks
    openvpn
    libreoffice

    pipx # Install Python applications in isolated environments
    notesnook # note taking app

    # C / C++
    gcc
    grc
    gnumake

    #niche cli tools
    cmatrix
    bitwarden-cli
    du-dust # disk space visualizer
    nitch # systhem fetch util
    zoxide # faster cd
    ripgrep # grep replacement
    todo # cli todo list
    toipe # typing test in the terminal
    yazi # terminal file manager
    yt-dlp # yt vid downloader
    wf-recorder
    lazygit
    spicetify-cli
    hyprpicker # color picker
    cliphist # clipboard manager
    wl-clipboard
    translate-shell
    wf-recorder
    lazygit
    nix-search-cli
    wget
    man-pages # extra man pages
    mpv # video player
    ncdu # disk space
    powertop
    speedtest-rs #speedtest
    htop

    #torrent/downloader
    qbittorrent-qt5 #torrent
    motrix

    ffmpeg
    # swaylock-effects #lockscreen
    hypridle
    hyprlock

    vlc
    floorp # firefox fork
    kitty
    # imv # image viewer
    libnotify
    obs-studio
    vscodium

    #audio
    pamixer # pulseaudio command line mixer
    pavucontrol # pulseaudio volume controle (GUI)
    playerctl # controller for media players

    qalculate-gtk # calculator
    unzip
    zoom-us
    telegram-desktop
    xdg-utils
    inputs.alejandra.defaultPackage.${system} #formator
    inputs.RustLover.packages.${system}.default #nvim-neve
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast #grimblast

    polkit_gnome #polkit gnome

    viber
  ];
}
