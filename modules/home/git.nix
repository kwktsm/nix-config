{...}: {
  flake.homeModules.git = {...}: {
    programs.git = {
      enable = true;
      settings.user = {
        name = "shuma";
        email = "kwktsm@gmail.com";
      };
    };
  };
}
