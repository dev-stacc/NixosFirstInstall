{ username, timeZone, ... } : {
    nix.settings = {
        experimental-features = [ "nix-command" "flakes" ];
        trusted-users = [ username ];
    };

    hardware.enableRedistributableFirmware = true;
    time.timeZone = timeZone;
    systemd.network.wait-online.enable = false;

    system.stateVersion = "26.05";
}
