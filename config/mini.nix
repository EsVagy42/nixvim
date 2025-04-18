{ lib, ... }: {
  plugins = {
    mini = {
      enable = true;
      modules = {
        ai = { };
        align = { };
        comment = { };
        completion = { };
        move = { };
        operators = {
          exchange.prefix = "gX";
          replace = {
            prefix = "gR";
            reindent_linewise = true;
          };
        };
        pairs = { };
        snippets = { };
        splitjoin = { };
        surround = { };
        basics = {
          options = {
            basic = true;
            extra_ui = true;
            win_borders = "default";
          };
          mappings = {
            basic = true;
            option_toggle_prefix = "\\";
            windows = true;
            move_with_alt = true;
          };
          autocommands = {
            basic = true;
            relnum_in_visual_mode = false;
          };
          silent = false;
        };
        bracketed = {
          comment = {
            suffix = "";
            options = { };
          };
        };
        bufremove = { };
        diff = { };
        extra = { };
        files = {
          windows = {
            preview = true;
            width_preview = 50;
          };
        };
        git = { };
        jump = { };
        jump2d = { };
        pick = { };
        sessions = { };
        visits = { };
        animate = { };
        cursorword = { };
        icons = { };
        indentscope = { options = { try_as_border = true; }; };
        notify = { };
        starter = { };
        statusline = { };
        tabline = { };
        map = { };
      };

      luaConfig.post = ''
                        	local miniclue = require('mini.clue')
                        miniclue.setup({
                          triggers = {
                            -- Leader triggers
                            { mode = 'n', keys = '<Leader>' },
                            { mode = 'x', keys = '<Leader>' },

                            -- Built-in completion
                            { mode = 'i', keys = '<C-x>' },

                            -- `g` key
                            { mode = 'n', keys = 'g' },
                            { mode = 'x', keys = 'g' },

                            -- Marks
                           { mode = 'n', keys = "'" },
                            { mode = 'n', keys = '`' },
                            { mode = 'x', keys = "'" },
                            { mode = 'x', keys = '`' },

                            -- Registers
                            { mode = 'n', keys = '"' },
                            { mode = 'x', keys = '"' },
                            { mode = 'i', keys = '<C-r>' },
                            { mode = 'c', keys = '<C-r>' },

                            -- Window commands
                            { mode = 'n', keys = '<C-w>' },

                            -- `z` key
                            { mode = 'n', keys = 'z' },
                            { mode = 'x', keys = 'z' },

                            { mode = 'n', keys = 's'},
                            { mode = 'x', keys = 's'},

                            { mode = 'n', keys = ']'},
                            { mode = 'x', keys = ']'},
                            { mode = 'n', keys = '['},
                            { mode = 'x', keys = '['},

                            { mode = 'n', keys = 'i'},
                            { mode = 'x', keys = 'i'},
                            { mode = 'n', keys = 'a'},
                            { mode = 'x', keys = 'a'},
                          },

                          clues = {
                            -- Enhance this by adding descriptions for <Leader> mapping groups
                            miniclue.gen_clues.builtin_completion(),
                            miniclue.gen_clues.g(),
                            miniclue.gen_clues.marks(),
                            miniclue.gen_clues.registers(),
                            miniclue.gen_clues.windows(),
                            miniclue.gen_clues.z(),
                	    {mode = 'n', keys = '<leader>p', desc = 'Pick'},
                	    {mode = 'n', keys = '<leader>d', desc = 'Debug'},
        		    {mode = 'n', keys = '<leader>m', desc = 'Map'},
        		    {mode = 'n', keys = '<leader>c', desc = 'Competitest'},
        		    {mode = 'n', keys = '<leader>cr', desc = 'Competitest receive'},
                	    {mode = 'n', keys = '[c', desc = 'Diff backward'},
                	    {mode = 'n', keys = ']c', desc = 'Diff forward'},
                          },

                          window = {
                              config = {},
                              delay = 500,
                              scroll_down = '<C-d>';
                              scroll_up = '<C-u>';
                            },
                        })

                        local hipatterns = require('mini.hipatterns')
                        hipatterns.setup({
                          highlighters = {
                            -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
                            fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
                            hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
                            todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
                            note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

                            -- Highlight hex color strings (`#rrggbb`) using that color
                            hex_color = hipatterns.gen_highlighter.hex_color(),
                          },
                        })
      '';
    };
  };
}
