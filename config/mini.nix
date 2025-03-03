{lib, ...}:
{
  plugins = {
    mini = {
      enable = true;
      modules = {
        ai = { };
        align = { };
        comment = { };
        completion = { };
        move = { };
        operators = { };
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
        bracketed = { };
        bufremove = { };
        diff = { };
        extra = { };
        files = { };
        git = { };
        jump = { };
        jump2d = { };
        misc = { };
        pick = { };
        sessions = { };
        visits = { };
        animate = { };
        colors = { };
        cursorword = { };
        hipatterns = { };
        icons = { };
        indentscope = { };
        map = { };
        notify = { };
        starter = { };
        statusline = { };
        tabline = { };
        trailspace = { };
        doc = { };
        fuzzy = { };
        test = { };
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
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },

  window = {
      config = {},
      delay = 500,
      scroll_down = '<C-d>';
      scroll_up = '<C-u>';
    },
})
      '';
    };
  };
}
