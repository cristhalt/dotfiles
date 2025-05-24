{ ... }: {
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/7c4deee5-53f6-44f6-8af5-ad3ed01edb41";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-5eff5fa6-972e-4f24-bb03-1b3825153825".device = "/dev/disk/by-uuid/5eff5fa6-972e-4f24-bb03-1b3825153825";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/8A76-F721";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/9508e6a1-b553-4ee2-af6f-d4caa053aa1e"; }
    ];

}
