{ ... }: {
  imports = [ ./hardware-configuration.nix ];

  networking.hostName = "kvm-guest";

  boot.loader.grub = {
    enable = true;
    device = "/dev/vda";
  };
}
