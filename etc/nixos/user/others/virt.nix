{ config, lib, pkgs, ... }:
{
    #Virtualization
    environment.systemPackages = with pkgs; [
  	bottles
  ];
    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;
    services.qemuGuest.enable = true;
    services.spice-vdagentd.enable = true;  # enable copy and paste between host and guest
    virtualisation.spiceUSBRedirection.enable = true; 
}
