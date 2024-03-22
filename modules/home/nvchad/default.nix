{ stdenv, pkgs, fetchFromGithub }:
{
nvchad = stdenv.mkDerivation rec {
	pname = "nvchad";
	version = "";
	dontBuild = true;

	src = pkgs.fetchFromGitHub {
		owner = "RustLover2910";
		repo = "nvchad";
		rev = "846e1b768b8fc4efee82acc31505e63e56615637";
		sha256 = "sha256-1stoW1H8PqRZny9wOrkGd254UbM5c7Kx/tkfTTGMKsQ=";
	};
	installPhase = ''
		mkdir $out
    		cp -aR $src/* $out/
	'';
};
}
