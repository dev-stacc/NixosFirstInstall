{ username, ... } : {
    nix.settings = {
        experimental-features = [ "nix-command" "flakes" ];
        trusted-users = [ "root" username ];
    };

    hardware.enableRedistributableFirmware = true;
    time.timeZone = "America/New_York";
    systemd.network.wait-online.enable = false;

    system.stateVersion = "26.05";
}
