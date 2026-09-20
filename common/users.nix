{ username, authorizedKeys, ... } : {
    users.users.${username} = {
        isNormalUser = true;
        openssh.authorizedKeys.keys = authorizedKeys;
        extraGroups = [
            "wheel"
        ];
    };

    security.sudo.extraRules = [{
        users = [ username ];
        commands = [{
            command = "ALL";
            options = [ "NOPASSWD" ];
        }];
    }];
}
