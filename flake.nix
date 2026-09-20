{
    description = "Agnostic bootstrap hosts";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    };

    outputs = {
        self,
        nixpkgs,
        ...
    } @ inputs :
    let
        username = "bootstrap";
        timeZone = "America/Toronto";
        specialArgs = { inherit inputs username timeZone; };
    in {
        nixosConfigurations = {
            AgnosUEFI = nixpkgs.lib.nixosSystem {
                inherit specialArgs;
                modules = [ ./hosts/uefi/default.nix ];
            };
#remember to change the boot loader grub device to match your system at /hosts/legacy/default.nix
            AgnosLEGACY = nixpkgs.lib.nixosSystem {
                inherit specialArgs;
                modules = [ ./hosts/legacy/default.nix ];
            };
        };
    };
}
