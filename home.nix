{ config, pkgs, ... }:

{
  home.username = "marcus";
  home.homeDirectory = "/home/marcus";


  home.packages = with pkgs; [
  tree
  mailspring
  hugo
  lsof
  which
  ];

  home.stateVersion = "23.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}