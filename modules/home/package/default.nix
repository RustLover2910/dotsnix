{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    #Drawing
    krita

    protonvpn-gui # vpn
    badvpn
    shadowsocks-libev

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

    #games
    lutris

    inputs.eza.packages.${system}.default # ls replacement
    fzf # fuzzy finder

    #bowsers
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

    # disks
    gparted #disk format
    #analyzer
    baobab
    ncdu
    du-dust

    #file manager
    cinnamon.nemo-with-extensions # file manager
    gnome.file-roller

    #notes
    # obsidian

    openvpn #vpn
    wireguard-tools

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
    powertop
    speedtest-rs #speedtest
    lolcat
    cowsay
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

    #youtube
    freetube

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

    viber
    statix
  ];
}
