{
  lib,
  inputs,
  ...
}: {
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;

    settings =
      {
        right_format = "$cmd_duration";

        directory = {
          format = "[  ](bold #89b4fa)[ $path ]($style)";
          style = "bold #b4befe";
        };

        character = {
          success_symbol = "[  ](bold #89b4fa)[ ➜ ](bold green)";
          error_symbol = "[ ](bold #89b4fa)[ ➜ ](bold red)";
          #error_symbol = "[  ](bold #89dceb)[ ✗ ](bold red)";
        };

        cmd_duration = {
          format = "[]($style)[[󰔚 ](bg:#404455 fg:#d4c097 bold)$duration](bg:#404455 fg:#BBC3DF)[ ]($style)";
          disabled = false;
          style = "bg:none fg:#404455";
        };
        git_branch = {
          symbol = "  ";
        };
        directory = {
          read_only = "  ";

          substitutions = {
            "~" = "󰋞 ";
            "Documents" = "󰈙 ";
            "Downloads" = " ";
            "Music" = " ";
            "Pictures" = " ";
          };
        };

        palette = "catppuccin_frappe";
      }
      // builtins.fromTOML (builtins.readFile "${inputs.catppuccin-starship}/palettes/frappe.toml");
  };
}
