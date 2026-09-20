{ lib, modulesPath, ... } : {
    imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot.initrd.availableKernelModules = [
        "ahci"
        "ata_generic"
        "ata_piix"
        "ehci_pci"
        "ohci_pci"
        "pata_acpi"
        "sd_mod"
        "sr_mod"
        "uhci_hcd"
        "usb_storage"
        "usbhid"
    ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ ];
    boot.extraModulePackages = [ ];

    fileSystems."/" = {
        device = "/dev/disk/by-label/NIXROOT";
        fsType = "ext4";
    };

    swapDevices = [ ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
