{ config, lib, pkgs, ... }: {

  # Services
  services.locate.enable = true;
  services.locate.package = pkgs.mlocate;
  services.locate.localuser = null;

}
