{
  plugins = {
    dap = {
      enable = true;
      luaConfig.post = ''
        	local dap = require('dap')
        	dap.adapters.lldb = {
        	  type = 'executable',
        	  command = '/run/current-system/sw/bin/lldb-dap', -- adjust as needed, must be absolute path
        	  name = 'lldb'
        	}
        	dap.configurations.cpp = {
        	  {
        	    name = 'Launch',
        	    type = 'lldb',
        	    request = 'launch',
        	    program = function()
        	      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        	    end,
        	    cwd = "''${workspaceFolder}",
        	    stopOnEntry = true,
        	    args = {},
        	    runInTerminal = true,
        	  },
        	}

        	dap.adapters.coreclr = {
                  type = 'executable',
                  command = '/run/current-system/sw/bin/netcoredbg',
                  args = {'--interpreter=vscode'},
        	  name = 'netcoreclr'
                }
                dap.configurations.cs = {
                  {
                    type = "coreclr",
                    name = "launch - netcoredbg",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                    end,
                  },
                }           	    '';
    };
  };
}
