{ ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-bf221af3-6352-43d5-9b96-40b06238dbf7".device =
    "/dev/disk/by-uuid/bf221af3-6352-43d5-9b96-40b06238dbf7";

  networking.hostName = "hp-victus";
}
