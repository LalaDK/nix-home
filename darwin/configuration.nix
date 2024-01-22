{ config, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.lolcat
    pkgs.gnused
    pkgs.gnugrep
    pkgs.findutils
    pkgs.cargo
    pkgs.tmux
    pkgs.tree
    pkgs.ponysay
    pkgs.cowsay
    pkgs.curl
    pkgs.fzf
    pkgs.htop
    pkgs.nano
    pkgs.ripgrep
    pkgs.kakoune
    pkgs.ruby_2_7
    pkgs.openssl_1_1
    pkgs.openssl_1_1.dev
    pkgs.nodejs_21
    pkgs.python2
    pkgs.zellij
  ];

  programs.zsh.enable = true;

  services.postgresql = {
    enable = true;
  };

  launchd.user.agents.mads = {
    script = "echo 'lolo'";
  };
  services.nix-daemon.enable = true;
  nixpkgs.config.permittedInsecurePackages = [ "ruby-2.7.8" "openssl-1.1.1w" "python-2.7.18.7"];
  nixpkgs.config.allowUnfree = true;
}
