{ ... } : {
    imports = [
        ../../common/default.nix
        ./hardware-configuration.nix
    ];

    networking.hostName = "AgnosLEGACY";

    boot.loader = {
        systemd-boot.enable = false;
        grub = {
            enable = true;
            device = "/dev/sda";
            efiSupport = false;
        };
    };
}
