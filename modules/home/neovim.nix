{inputs, ...}: {
  flake.homeModules.neovim = {pkgs, ...}: {
    imports = [inputs.nvf.homeManagerModules.default];
    programs.nvf = {
      enable = true;
      settings.vim = {
        extraPackages = with pkgs; [
          ripgrep
          tree-sitter
        ];

        opts = {
          expandtab = true;
          tabstop = 2;
          shiftwidth = 0;
          softtabstop = -1;

          wrap = true;

          clipboard = "unnamedplus";
        };

        autopairs.nvim-autopairs.enable = true;

        treesitter.context.enable = true;

        languages = {
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          nix.enable = true;
          clang.enable = true;
          cmake.enable = true;
          glsl.enable = true;
          lua.enable = true;
          zsh.enable = true;
          nu.enable = true;
        };

        lsp = {
          enable = true;
          formatOnSave = true;

          trouble.enable = true;
        };

        debugger = {
          nvim-dap = {
            enable = true;
            ui.enable = true;
          };
        };

        autocomplete = {
          blink-cmp = {
            enable = true;
            setupOpts.signature.enabled = true;
          };
        };

        snippets.luasnip.enable = true;

        visuals = {
          blink-indent.enable = true;
          nvim-web-devicons.enable = true;
        };

        ui = {
          noice.enable = true;
        };

        theme = {
          enable = true;
          name = "tokyonight";
          style = "night";
          transparent = true;
        };

        statusline = {
          lualine = {
            enable = true;
            setupOpts.options.theme = "tokyonight";
          };
        };

        telescope.enable = true;

        binds = {
          whichKey.enable = true;
        };

        notify = {
          nvim-notify.enable = true;
        };

        comments = {
          comment-nvim.enable = true;
        };
      };
    };
  };
}
