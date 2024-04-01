{
  stdenvNoCC,
  fetchFromGitHub,
  gnome-themes-extra,
  gtk-engine-murrine,
}:
stdenvNoCC.mkDerivation {
  pname = "everforest-gtk-theme";
  version = "unstable-2022-12-09";

  src = fetchFromGitHub {
    owner = "Fausto-Korpsvart";
    repo = "Everforest-GTK-Theme";
    rev = "2e18e0daff2268dd808101159b4be9e42a3a6db2";
    hash = "sha256-G6kxv6R7sCim9m1XBGqIBMH52LVrSwJKEKS2vKHjKC4=";
  };

  propagatedUserEnvPkgs = [
    gtk-engine-murrine
  ];

  buildInputs = [
    gnome-themes-extra
  ];

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/themes
    cp -a themes/* $out/share/themes
    runHook postInstall
  '';

  # meta = with lib; {
  #   description = "A Gtk theme based on the Gruvbox colour pallete";
  #   homepage = "https://www.pling.com/p/1681313/";
  #   license = licenses.gpl3Only;
  #   platforms = platforms.unix;
  #   maintainers = [ maintainers.math-42 ];
  # };
}
