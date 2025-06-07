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
      };
    };
  };
}
