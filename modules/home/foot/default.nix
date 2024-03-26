{pkgs, ...}: {
  home.packages = [
    pkgs.foot
  ];

  xdg.configFile."foot/foot.ini".text = ''
      ## =========== Everforest - Dark - Medium ================= ##
    alpha=1.0
    background=2f383e
    foreground=d3c6aa

    regular0=4b565c # black
    regular1=e67e80 # red
    regular2=a7c080 # green
    regular3=dbbc7f # yellow
    regular4=7fbbb3 # blue
    regular5=d699b6 # magenta
    regular6=83c092 # cyan
    regular7=d3c6aa # white

    bright0=4b565c # black
    bright1=e67e80 # red
    bright2=a7c080 # green
    bright3=dbbc7f # yellow
    bright4=7fbbb3 # blue
    bright5=d699b6 # magenta
    bright6=83c092 # cyan
    bright7=d3c6aa # white
  '';
}
