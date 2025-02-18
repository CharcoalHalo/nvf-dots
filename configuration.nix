{ ... }:
let 
  atelier-lakeside = {
    base00 = "#161b1d";
    base01 = "#1f292e";
    base02 = "#516d7b";
    base03 = "#5a7b8c";
    base04 = "#7195a8";
    base05 = "#7ea2b4";
    base06 = "#c1e4f6";
    base07 = "#ebf8ff";
    base08 = "#d22d72";
    base09 = "#935c25";
    base0A = "#8a8a0f";
    base0B = "#568c3b";
    base0C = "#2d8f6f";
    base0D = "#257fad";
    base0E = "#6b6bb8";
    base0F = "#b72dd2";
  };

in
{
  vim = {
    viAlias = true;
    vimAlias = true;
    
    spellcheck.enable = true;

    telescope.enable = true; # fzf finder

    theme = {
      enable = true;
      name = "base16";
      base16-colors = atelier-lakeside;
    };

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;

      nix = {
        enable = true;
        format.type = "nixfmt";
      };
      markdown.enable = true;
      java.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true; 
    };

    dashboard.dashboard-nvim = { # start up dashboard
      enable = true;
    };

    notes.todo-comments.enable = true;

  };
}