{config, pkgs, ... }:

{
  home.username = "marcus";
  home.homeDirectory = "/home/marcus";

programs.nixvim = {
    enable = true;
colorschemes.kanagawa.enable = true;
    plugins.lightline.enable = true;
    # Configure neovim options...
    options = {
      relativenumber = true;
      incsearch = true;
    };

programs.helix.enable = true;

    # ...mappings...
    maps.normal = {
      "<C-s>" = ":w<CR>";
      "<esc>" = { action = ":noh<CR>"; silent = true; };
    };

    # ... and plugins
    plugins = {
      telescope.enable = true;
      harpoon = {  # Hi Prime :)
        enable = true;
        keymaps.addFile = "<leader>a";
      };
    };
  };


  home.packages = with pkgs; [
  tree
  nnn
  exa
  ripgrep
  neofetch
  fzf
  dnsutils
  gawk
  python39
  nix-output-monitor
  glow
  lsof
  mailspring
  nodejs_20
  go
  hugo
  python311Packages.pip
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
      va = "source virt_env/bin/activate";
      vd = "deactivate";
      vc = "python3 -m venv virt_env";
      hugo = "cd ~/Websites/Sites";
      dhc = "cd ~/Websites/Sites/DHC";
      nix_info = "cd ~/Websites/Sites/nixs.info && npm run dev";
      posts = "cd ~/Websites/Sites/nixs.info/content/english/posts";
      n = "sudo nvim";
      nv = "nvim";
      webd = "cd ~/Websites/Sites/nixs.info";
      cf = "cd /etc/nixos/nixos && sudo hx configuration.nix";
      fl = "cd /etc/nixos && sudo hx flake.nix";
      hm = "cd /etc/nixos/home-manager && sudo hx home.nix";
      rb = "sudo nixos-rebuild --flake .#My_Nix switch";
      c = "clear";
      tc = "sensors";
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
      man = "man home-configuration.nix";
      maj = "sudo nix flake update && rb";
      #shx ="sudo hx";
      ga = "git init";
      gb = "git add .";
      gc = "git push -u origin master";    
      };

};

  home.stateVersion = "23.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
