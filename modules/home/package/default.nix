{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    eza # ls replacement
    fzf # fuzzy finder
    go

    # 3d
    blender

    #bowsers
    ungoogled-chromium #chromium
    floorp # firefox fork

    #image
    inkscape

    #pdf viewer/editor
    xournalpp

    openjdk17-bootstrap # for minecraft
    prismlauncher #minecraft

    filelight # disk usage analyzer
    gparted
    baobab

    #file manager
    cinnamon.nemo-with-extensions # file manager
    yazi # cli file manager

    #notes
    logseq
    trilium-desktop
    obsidian

    font-manager
    gnome.gnome-tweaks
    openvpn
    libreoffice
    bitwarden

    pipx # Install Python applications in isolated environments
    yarn

    #music player
    amberol

    # C / C++
    gcc
    grc
    gnumake
    cmake

    #niche cli tools
    cmatrix
    du-dust # disk space visualizer
    nitch # systhem fetch util
    neofetch # system fetch
    zoxide # faster cd
    ripgrep # grep replacement
    todo # cli todo list
    toipe # typing test in the terminal
    yt-dlp # yt vid downloader
    wf-recorder
    lazygit
    spicetify-cli
    cliphist # clipboard manager
    wl-clipboard
    translate-shell
    wf-recorder
    lazygit
    nix-search-cli
    fd
    wget
    man-pages # extra man pages
    ncdu # disk space
    powertop
    speedtest-rs #speedtest
    htop

    #torrent/downloader
    deluge #torrent
    motrix

    loupe
    mapscii

    ffmpeg
    gnome.gnome-maps
    gnome-text-editor
    snapshot
    gnome.gnome-calendar
    python311
    # swaylock-effects #lockscreen

    vlc
    mpv # video players
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
    inputs.alejandra.packages.${system}.default #formator
    #inputs.RustLover.packages.${system}.default #nvim-neve
    polkit_gnome #polkit gnome

    viber

    #davinci-resolve
  ];
}
