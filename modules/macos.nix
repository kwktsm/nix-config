{
  config,
  inputs,
  withSystem,
  ...
}: {
  flake.darwinConfigurations."Shumas-MacBook-Air" = inputs.nix-darwin.lib.darwinSystem {
    modules = [
      config.flake.modules.darwin.configuration
    ];
  };

  flake.homeConfigurations."shuma" = withSystem "aarch64-darwin" ({pkgs, ...}:
    inputs.home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = with config.flake.homeModules; [
        home-manager
        git
        ssh
        fonts
        neovim

        {
          home.username = "shuma";
          home.homeDirectory = "/Users/shuma";
          home.stateVersion = "26.11";
        }
      ];
    }
  );
}
