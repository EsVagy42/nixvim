{
  # Import all your configuration modules here
  imports = [
    ./lsp.nix
    ./lsp-format.nix
    ./which-key.nix
    ./surround.nix
    ./autopairs.nix
    ./treesitter.nix
    ./treesitter-context.nix
    ./treesitter-textobjects.nix
    ./telescope.nix
    ./web-devicons.nix
    ./undotree.nix
  ];
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
  };
  globals = { mapleader = " "; };
}
