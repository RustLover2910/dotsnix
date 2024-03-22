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

    libnotify

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

    #python
    pipx # Install Python applications in isolated environments
    yarn
    python311

    #music player
    amberol

    # C / C++
    gcc
    grc
    gnumake
    cmake
    ninja

    #niche cli tools
    cmatrix
    du-dust # disk space visualizer
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
    xclip
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
    unzip

    #torrent/downloader
    deluge #torrent
    motrix

    #maps
    mapscii
    gnome.gnome-maps

    gnome.gnome-calendar

    #media
    vlc
    mpv # video players
    loupe # image viwer
    obs-studio
    ffmpeg
    snapshot

    #coding
    vscodium

    # terminal
    kitty
    alacritty

    #audio
    pamixer # pulseaudio command line mixer
    pavucontrol # pulseaudio volume controle (GUI)
    playerctl # controller for media players

    qalculate-gtk # calculator

    zoom-us
    telegram-desktop
    xdg-utils
    inputs.alejandra.packages.${system}.default #formator
    # inputs.RustLover.packages.${system}.default #nvim-neve
    polkit_gnome #polkit gnome

    viber
  ];
}
