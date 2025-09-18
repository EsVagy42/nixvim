{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        bashls.enable = true;
        nixd.enable = true;
        marksman.enable = true;
        lua_ls.enable = true;
        html.enable = true;
        cssls.enable = true;
        pyright.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        hls = {
          enable = true;
	  installGhc = true;
        };
        csharp_ls.enable = true;
      };
    };
  };
}
