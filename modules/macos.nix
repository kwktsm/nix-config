{
  config,
  inputs,
  ...
}: {
  flake.darwinConfigurations."Shumas-MacBook-Air" = inputs.nix-darwin.lib.darwinSystem {
    modules = [
      config.flake.modules.darwin.configuration
    ];
  };
}
