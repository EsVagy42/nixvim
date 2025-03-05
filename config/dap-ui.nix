{
  plugins = {
    dap-ui = {
      enable = true;
      luaConfig.post = ''
        local dap, dapui = require("dap"), require("dapui")
        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        	'';
    };
  };
}
