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
    ./dap.nix
    ./dap-ui.nix
    ./dap-virtual-text.nix
  ];
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
    smartindent = false;
    cindent = true;
    scrolloff = 5;
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
    vim.keymap.set({"n", "v"}, "<leader>de", function() require("dapui").eval() end, {desc = "Debug eval"})
    vim.keymap.set("n", "<F5>", function() require("dap").continue() end, {desc = "Debug continue"})
    vim.keymap.set("n", "<F10>", function() require("dap").step_over() end, {desc = "Debug step over"})
    vim.keymap.set("n", "<F11>", function() require("dap").step_into() end, {desc = "Debug step into"})
    vim.keymap.set("n", "<F12>", function() require("dap").step_out() end, {desc = "Debug step out"})
    vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end, {desc = "Debug toggle breakpoint"})
    vim.keymap.set("n", "<leader>dB", function() require("dap").set_breakpoint() end, {desc = "Debug set breakpoint"})
    vim.keymap.set("n", "<leader>dl", function() require("dap").set_breakpoint(nil, nil, vim.fn.input('Log point message:')) end, {desc = "Debug set logpoint"})
    vim.keymap.set("n", "<leader>dr", function() require("dap").repl.open() end, {desc = "Debug repl open"})
    vim.keymap.set("n", "<leader>dp", function() require("dap").run_last() end, {desc = "Debug run last"})
    vim.keymap.set("n", "<leader>dc", function () dapui.close() require("dap").terminate() end, {desc = "Close Dap-UI"})
    vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", {desc = "Apply code action"})
    vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", {desc = "Toggle undo tree"})
    vim.keymap.set('n', '<Leader>mc', MiniMap.close, {desc = "Map close"})
    vim.keymap.set('n', '<Leader>mf', MiniMap.toggle_focus, {desc = "Map toggle focus"})
    vim.keymap.set('n', '<Leader>mo', MiniMap.open, {desc = "Map open"})
    vim.keymap.set('n', '<Leader>mr', MiniMap.refresh, {desc = "Map refresh"})
    vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side, {desc = "Map toggle side"})
    vim.keymap.set('n', '<Leader>mt', MiniMap.toggle, {desc = "Map toggle"})

    local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
    end
    imap_expr('<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
    imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
  '';
}
