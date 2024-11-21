{
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
          ];

          mapping = {
            "<C-y>" = "cmp.mapping.confirm({ select = true })";
            "<C-n>" = "cmp.mapping.select_next_item()";
            "<C-p>" = "cmp.mapping.select_prev_item()";
            "<C-b>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete({})";
          };
        };
      };
      cmp-nvim-lsp.enable = true;
      cmp-path.enable = true;
      cmp-buffer.enable = true;

      lsp = {
        enable = true;

        servers = {
          rust-analyzer = {
            enable = true;
            filetypes = [ "rust" ];
            onAttach = {
              function =
                ''
                vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
                '';
            };
            installCargo = false;
            installRustc = false;
            settings = {
              cargo.features = "all";
            };
          };
          gopls = {
            enable = true;
            filetypes = [ "go" ];
          };
        };
      };

    };
}
