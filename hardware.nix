{
  hardware.enableRedistributableFirmware = true;
  boot.loader.raspberry-pi.bootloader = "kernel";

  fileSystems."/" = {
    device = "44444444-4444-4444-8888-888888888888";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "2178-694E";
    fsType = "vfat";
  };
}
