{ inputs
, pkgs
, ...
}: {
  home.packages = with pkgs; [
    eza # ls replacement
    fzf # fuzzy finder
    go
    openjdk17-bootstrap
    filelight
    wl-screenrec
    wf-recorder
    lazygit
    github-desktop
    gnome.gnome-tweaks
    openvpn
    libreoffice
    nitch # systhem fetch util
    du-dust
    zoxide
    pipx # Install Python applications in isolated environments
    prismlauncher # minecraft launcher
    ripgrep # grep replacement
    todo # cli todo list
    toipe # typing test in the terminal
    yazi # terminal file manager
    yt-dlp
    #gnome.zenity

    # C / C++
    gcc
    grc
    gnumake

    # bleachbit # cache cleaner
    cmatrix
    qbittorrent-qt5
    gparted # partition manager
    ffmpeg
    swaylock-effects

    vlc
    cinnamon.nemo-with-extensions
    floorp
    kitty
    okular
    imv # image viewer
    libnotify
    spicetify-cli
    hyprpicker
    kate
    cliphist
    wl-clipboard
    obs-studio
    vscodium
    fishPlugins.autopair
    fishPlugins.colored-man-pages
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
    inputs.alejandra.defaultPackage.${system}
    inputs.RustLover.packages.${system}.default
  ];
}
