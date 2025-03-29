{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/f5f28eb6-54e7-475c-a923-92eafc4a16d6";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-c76ae284-83b6-4d50-bd64-e08c5f0473da".device = "/dev/disk/by-uuid/c76ae284-83b6-4d50-bd64-e08c5f0473da";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/FA24-CF9F";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/c08e3b17-f9f2-438b-9bec-7dcc91a9fd93"; }
    ];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
