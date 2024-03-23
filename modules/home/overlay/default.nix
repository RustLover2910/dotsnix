{
  config,
  pkgs,
  lib,
  ...
}: {
  nixpkgs.overlays = [
    (_: final: prev: {
      pythonPackagesExtensions =
        prev.pythonPackagesExtensions
        ++ [
          (
            python-final: python-prev: {
              catppuccin = python-prev.catppuccin.overridePythonAttrs (oldAttrs: rec {
                version = "1.3.2";

                src = prev.fetchFromGitHub {
                  owner = "catppuccin";
                  repo = "python";
                  rev = "refs/tags/v${version}";
                  hash = "sha256-spPZdQ+x3isyeBXZ/J2QE6zNhyHRfyRQGiHreuXzzik=";
                };

                # can be removed next version
                disabledTestPaths = [
                  "tests/test_flavour.py" # would download a json to check correctness of flavours
                ];
              });
            }
          )
        ];
    })
  ];
}
