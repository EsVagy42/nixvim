{
  # Import all your configuration modules here
  imports = [ ./lsp.nix ./lsp-format.nix ./which-key.nix ./surround.nix ];
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
  };
}
