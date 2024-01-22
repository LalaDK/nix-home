{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.lolcat ];
  programs.zsh.enable = true;

  services.postgresql = {
    enable = true;
  };

  launchd.user.agents.mads = {
    script = "echo 'lolo'";
  };
  services.nix-daemon.enable = true;
  nixpkgs.config.allowUnfree = true;
}
