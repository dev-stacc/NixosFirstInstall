{ ... } : {
    imports = [
        ../../common/default.nix
        ./hardware-configuration.nix
    ];

    networking.hostName = "AgnosUEFI";

    boot.loader = {
        systemd-boot.enable = true;
        efi.canTouchEfiVariables = true;
    };
}
