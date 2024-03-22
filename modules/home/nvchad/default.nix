{ stdenv, pkgs, fetchFromGithub }:
{
nvchad = stdenv.mkDerivation rec {
	pname = "nvchad";
	version = "";
	dontBuild = true;

	src = pkgs.fetchFromGithub {
		owner = "NvChad";
		repo = "NvChad";
		rev = "70f66adb594e6854eff5d39ccc13030559a75ae6";
		sha256 = "09r1m560qv8xbgnxfp7nnplwiwr6hn6nk5cljz32njv9ld1g4bnx";
	};
	installPhase = ''
		mkdir $out
    		cp -aR $src/* $out/
	'';
};
}
