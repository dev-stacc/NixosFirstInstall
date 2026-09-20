{ timeZone, ... } : {
    nix.settings = {
        experimental-features = [ "nix-command" "flakes" ];
    };

    hardware.enableRedistributableFirmware = true;
    time.timeZone = timeZone;

    system.stateVersion = "26.05";
}
