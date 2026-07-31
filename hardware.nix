{
  hardware.enableRedistributableFirmware = true;

  fileSystems."/" = {
    device = "/dev/mmcblk0p2";
    fsType = "ext4";
    options = [ "subvol=root" ];
  };
}
