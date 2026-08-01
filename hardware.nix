{
  hardware.enableRedistributableFirmware = true;
  boot.loader.raspberry-pi.bootloader = "kernel";

  fileSystems."/" = {
    device = "/dev/mmcblk0p2";
    fsType = "ext4";
  };
}
