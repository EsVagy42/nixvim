{
  # Import all your configuration modules here
  imports = [
  	./mini.nix
	./undotree.nix
	./treesitter-textobjects.nix
	./treesitter-context.nix
	./treesitter.nix
	./lsp-format.nix
	./lsp.nix
  ];
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
  };
  globals = { mapleader = " "; };
  extraConfigLua = ''
    vim.keymap.set("n", "<leader>pb", ":Pick buffers<CR>", {desc = "Pick buffers"})
    vim.keymap.set("n", "<leader>pd", ":Pick diagnostic<CR>", {desc = "Pick diagnostic"})
    vim.keymap.set("n", "<leader>pe", ":Pick explorer<CR>", {desc = "Pick explorer"})
    vim.keymap.set("n", "<leader>pf", ":Pick files<CR>", {desc = "Pick files"})
    vim.keymap.set("n", "<leader>pg", ":Pick grep_live<CR>", {desc = "Pick grep live"})
    vim.keymap.set("n", "<leader>ph", ":Pick git_hunks<CR>", {desc = "Pick git hunks"})
    vim.keymap.set("n", "<leader>pl", ":Pick lsp<CR>", {desc = "Pick lsp"})
    vim.keymap.set("n", "<leader>pm", ":Pick marks<CR>", {desc = "Pick marks"})
  '';
}
