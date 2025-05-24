{ modulesPath, lib, config, ... }: {
  imports = [
    ./disk.nix
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  networking.hostName = "laptop-victus";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Paris";

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-fb6fff0c-b330-4b4a-9cdf-3aa3f05fab83".device = "/dev/disk/by-uuid/fb6fff0c-b330-4b4a-9cdf-3aa3f05fab83";

  console.keyMap = "fr";
  home-manager.users.cristhalt.wayland.windowManager.hyprland.settings.input.kb_layout = "fr";
}
