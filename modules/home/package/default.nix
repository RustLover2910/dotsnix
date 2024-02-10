{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [
    #aichat # Chat with gpt-3.5/chatgpt in terminal.
    #bitwise # cli tool for bit / hex manipulation
    # discord
    eza # ls replacement
    # entr # perform action when file change
    #file # Show file information 
    fzf # fuzzy finder
    go
    #jdk17 # java
    openjdk17-bootstrap
    filelight
    lazygit
    github-desktop
    libreoffice
    nitch # systhem fetch util
    du-dust
    zoxide
    pipx # Install Python applications in isolated environments
    prismlauncher # minecraft launcher
    ripgrep # grep replacement
    todo # cli todo list
    toipe # typing test in the terminal
    #cinnamon.nemo-with-extensions # file manager
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
    floorp
    kitty
    okular
    imv # image viewer
    libnotify
    spicetify-cli
    hyprpicker
    kate
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
  ]);
}
