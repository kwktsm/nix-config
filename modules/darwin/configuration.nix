{...}: {
  flake.modules.darwin.configuration = {pkgs, ...}: {
    nixpkgs.hostPlatform = "aarch64-darwin";
    system.stateVersion = 7;
    nix.settings.experimental-features = ["nix-command" "flakes"];
  };
}
