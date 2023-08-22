{ config, pkgs, ... }:

{
  home.username = "marcus";
  home.homeDirectory = "/home/marcus";


  home.packages = with pkgs; [
  tree
  nnn
  exa
  ripgrep
  neofetch
  fzf
  dnsutils
  gawk
  nix-output-monitor
  glow
  lsof

  
  mailspring
  nodejs_20
  go
  hugo
  lsof
  which
  ];


programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';

# Git config using Home Manager modules
#  programs.git = {
#    enable = true;
#    userName = "BriefNCounter";
#    userEmail = "marcusdurston@yandex.com";
#    aliases = {
#      st = "status";
#    };
#  };



shellAliases = {
      post= "cd ~/Websites/Sites/nixs.info/content/english/posts";
      webs = "cd ~/Websites/Sites/nixs.info && npm run dev";
      webd = "cd ~/Websites/Sites/nixs.info";
      cf = "cd /etc/nixos && sudo hx configuration.nix";
      fl = "cd /etc/nixos && sudo hx flake.nix";
      hm = "cd /etc/nixos && sudo hx home.nix";
      rb = "sudo nixos-rebuild --flake .#My_Nix switch";
      c = "clear";
      g0 = "sudo git init";
      g1 = "sudo git add .";
      g3 = "sudo git push -u origin main";
      xx = "reboot";
      s = "sudo -s";
      pd = "cd ~/Programming/Python";      
      lq = "ls -ha";
      test = "sudo nixos-rebuild test --flake .#My_Nix";      
      check = "sudo nix flake check";
      nx = "cd /etc/nixos";
      
      };

};

  home.stateVersion = "23.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}