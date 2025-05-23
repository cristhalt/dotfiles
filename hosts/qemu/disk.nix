{ ... }: {
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/276921fe-c52e-45dd-a20c-6aeb4411644b";
      fsType = "ext4";
    };

  fileSystems."/boot/efi" =
    { device = "/dev/disk/by-uuid/EA14-1E48";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices = [ ];
}
