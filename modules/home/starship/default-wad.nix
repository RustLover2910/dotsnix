{pkgs, ...}: {
  #home.packages = with pkgs; [starship];
  programs.starship = let
    flavour = "frappe"; # One of `latte`, `frappe`, `macchiato`, or `mocha`
  in {
    enable = true;
    enableFishIntegration = true;
    settings =
      # Catppuccin
      {
        scan_timeout = 10;
        add_newline = false;
        line_break.disabled = false;
        right_format = "$cmd_duration";
        character = {
          success_symbol = "[  ](#b4befe)[ ✗][(#81c8be)]";
          error_symbol = "[  ]( #b4befe)[ ✗][(#dd6777)]";
          #vicmd_symbol = "[](#ecd3a0)";
          format = "[  ](#b4befe) ";
        };

        # format = ''
        #  $directory$git_branch$git_state$git_metrics$dart$lua$nodejs$package$python$rust$nix_shell$custom
        #    $character
        #  '';

        palette = "catppuccin_${flavour}";
        git_branch = {
          symbol = "  ";
        };
        git_commit = {commit_hash_length = 5;};

        dart = {
          symbol = "[](blue) ";
        };
        lua = {
          symbol = "[](blue) ";
        };
        nodejs = {
          version_format = "v$raw(blue)";
        };
        package = {
          symbol = "📦";
        };
        python = {
          symbol = "[](blue) ";
        };
        rust = {
          symbol = "[](red) ";
        };
        shell = {
          disabled = true;
          fish_indicator = "fish";
        };

        username = {
          show_always = false;
          style_user = "bold bg:none fg:#7aa2f7";
          format = "[$user]($style)";
        };

        hostname = {
          disabled = true;
          ssh_only = false;
          style = "bold bg:none fg:#CDD6F4";
          format = "@[$hostname]($style) ";
        };

        directory = {
          read_only = "  ";
          truncation_length = 3;
          truncation_symbol = " ./";
          # style = "bold bg:none fg:#393939";
          # style = "bold bg:none fg:#7aa2f7";
          style = "bold bg:none fg:#b4befe";
          # style = "bold bg:none fg:#7dcfff";
          # style = "bold bg:none fg:#ec6a88";
        };
        directory.substitutions = {
          "~" = " 󰋞 ";
          "Documents" = " 󰈙 ";
          "Downloads" = "   ";
          "Music" = "   ";
          "Pictures" = "   ";
        };

        nix_shell = {
          disabled = false;
          heuristic = false;
          impure_msg = "[impure-shell](red)";
          pure_msg = "[pure-shell](green)";
          unknown_msg = "[unknown-shell](yellow)";
        };
        cmd_duration = {
          format = "[]($style)[[󰔚 ](bg:#161821 fg:#d4c097 bold)$duration](bg:#161821 fg:#BBC3DF)[ ]($style)";
          disabled = false;
          style = "bg:none fg:#161821";
        };

        custom = {
          nix = {
            disabled = false;
            detect_files = ["flake.nix" "default.nix" "shell.nix"];
            command = ''
              if [ -e flake.nix ] || [ -e default.nix ] || [ -e shell.nix ]; then
                echo " (nix-shell)"
              fi
            '';
            format = "[$symbol$output]($style)";
            style = "bold blue";
            symbol = "[](bold blue) ";
          };
        };
      }
      // builtins.fromTOML (builtins.readFile (pkgs.fetchFromGitHub
        {
          owner = "catppuccin";
          repo = "starship";
          rev = "HEAD";
          sha256 = "sha256-nsRuxQFKbQkyEI4TXgvAjcroVdG+heKX5Pauq/4Ota0=";
        }
        + /palettes/${flavour}.toml));
  };
}
