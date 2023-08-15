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

shellAliases = {
      cf = "cd /etc/nixos && sudo hx configuration.nix";
      fl = "cd /etc/nixos && sudo hx flake.nix";
      hm = "cd /etc/nixos && sudo hx home.nix";
      rb = "cd /etc/nixos && sudo sudo nixos-rebuild --flake .#My_Nix switch";
      c = "clear";
      g0 = "sudo git init";
      g1 = "sudo git add .";
      g3 = "sudo git push -u origin main";
      xx = "reboot";
      s = "sudo -s";
      pd = "cd ~/Programming/Python";      


      };



  home.stateVersion = "23.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}