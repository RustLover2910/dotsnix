{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    #Drawing
    krita

    protonvpn-gui # vpn
    #protonvpn-cli
    nodejs
    #todolist
    planify

    #ereader
    foliate

    #wine
    wineWowPackages.stagingFull
    protonup-qt

    #image editor
    swappy
    krita

    #pdf merger
    pdfarranger

    #Disk Benchmark
    kdiskmark

    #games
    lutris

    inputs.eza.packages.${system}.default # ls replacement
    fzf # fuzzy finder

    #bowsers
    #ngoogled-chromium #chromium
    floorp # firefox fork
    brave

    #noti
    libnotify

    #flash card
    anki

    #pdf viewer/editor
    xournalpp

    #games
    openjdk17-bootstrap # for minecraft
    prismlauncher #minecraft

    # disk usage analyzer
    gparted
    baobab

    #file manager
    cinnamon.nemo-with-extensions # file manager
    gnome.file-roller

    #notes
    obsidian

    openvpn #vpn
    wg-quick

    #office
    libreoffice

    #passowrd manager
    bitwarden

    #stress-test
    stress
    s-tui

    #music player
    amberol

    # C / C++ || making packages
    gcc
    grc
    gnumake
    glib
    cmake
    ninja

    #niche cli tools
    cmatrix
    du-dust # disk space visualizer
    neofetch # system fetch
    zoxide # faster cd
    todo # cli todo list
    toipe # typing test in the terminal

    p7zip # 7z
    cliphist # clipboard manager
    wl-clipboard
    translate-shell # translater using google translate api
    wf-recorder # screen recorder
    nix-search-cli #nix pkg searcher
    man-pages # extra man pages
    ncdu # disk space
    powertop
    speedtest-rs #speedtest
    lolcat
    cowsay
    htop
    unzip

    ani-cli #anime

    #torrent/downloader
    deluge #torrent
    motrix

    #maps
    mapscii
    gnome.gnome-maps

    #calender
    calcurse

    #mail
    protonmail-desktop

    #passowrd
    keepassxc

    #media
    vlc
    mpv # video players
    imv # image viwer
    obs-studio
    # pamixer # pulseaudio command line mixer
    pavucontrol # pulseaudio volume controle (GUI)
    playerctl # controller for media players

    kitty
    vscodium

    qalculate-gtk # calculator

    zoom-us # zoom

    #communicate
    telegram-desktop # telegram
    jami
    signal-desktop

    xdg-utils

    inputs.alejandra.packages.${system}.default #formator

    inputs.RustLover29.packages.${system}.default #nvim-neve

    inputs.lobster.packages.${system}.lobster # movies

    polkit_gnome #polkit gnome

    viber
    statix
  ];
}
