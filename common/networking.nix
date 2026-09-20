{ ... } : {
    networking.wireless.iwd = {
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
}
