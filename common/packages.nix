{ pkgs, ... } : {
    environment.systemPackages = with pkgs; [
        git
        gh
        vim
        age
        sops
        ssh-to-age
        pciutils
        usbutils
    ];
}
