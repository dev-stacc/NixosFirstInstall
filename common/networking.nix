{ config, ... } : {
    networking = {
        wireless = {
            iwd = {
                enable = true;
                settings = {
                    Network = {
                        EnableIPv6 = true;
                        EnableNetworkConfiguration = true;
                    };
                    Settings = {
                        AutoConnect = true;
                    };
                };
            };
        };
        firewall = {
            enable = true;
            trustedInterfaces = [ "tailscale0" ];
            allowedTCPPorts = [ 22 ];
            allowedUDPPorts = [ config.services.tailscale.port ];
        };
    };

    services = {
        openssh = {
            enable = true;
            settings = {
                PasswordAuthentication = false;
                PubkeyAuthentication = true;
                PermitRootLogin = "no";
            };
        };
        tailscale.enable = true;
    };
}
