{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.eza.packages.${system}.default # ls replacement
    fzf # fuzzy finder
    go

    #bowsers
    #ungoogled-chromium #chromium
    floorp # firefox fork

    #image
    inkscape

    #noti
    libnotify

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
    logseq
    obsidian

    font-manager
    gnome.gnome-tweaks
    openvpn
    libreoffice
    bitwarden

    #python
    pipx # Install Python applications in isolated environments
    yarn
    python312Full

    # dev environments
    devenv

    #stress-test
    stress
    s-tui

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
    todo # cli todo list
    toipe # typing test in the terminal
    p7zip
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
    man-pages # extra man pages
    ncdu # disk space
    powertop
    speedtest-rs #speedtest
    lolcat
    cowsay
    htop
    unzip

    ani-cli

    #torrent/downloader
    deluge #torrent
    motrix

    #maps
    mapscii
    gnome.gnome-maps

    #calender
    gnome.gnome-calendar

    #media
    vlc
    mpv # video players
    loupe # image viwer
    obs-studio
    ffmpeg
    snapshot

    #editor
    openshot-qt
    blender

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
    inputs.RustLover29.packages.${system}.default #nvim-neve
    inputs.nix-inspect.packages.${system}.default
    inputs.lobster.packages.${system}.lobster

    pylint
    polkit_gnome #polkit gnome

    viber
  ];
}
