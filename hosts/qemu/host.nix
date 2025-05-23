{ modulesPath, ... }: {
  imports = [
    ./disk.nix
    (modulesPath + "/profiles/qemu-guest.nix")
  ];

  networking.hostName = "qemu";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  boot.initrd.availableKernelModules = [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
    grub = {
       efiSupport = true;
       device = "nodev";
    };
  };

  console.keyMap = "fr";
}
