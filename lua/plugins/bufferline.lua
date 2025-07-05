-- bufferline setup. removed in latest config.
-- this is also the default config, found at bufferline's github repo.

vim.opt.termguicolors = true

local bufferline = require('bufferline')

bufferline.setup({
	options = {
            mode = "buffers",
            style_preset = bufferline.style_preset.default,
            themable = true,
            numbers = "none",
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            middle_mouse_command = nil,
            indicator = {
                style = 'underline',
            },
            buffer_close_icon = '󰅖',
            modified_icon = '● ',
            close_icon = ' ',
            left_trunc_marker = ' ',
            right_trunc_marker = ' ',
            name_formatter = function(buf)  -- buf contains:
                  -- name                | str        | the basename of the active file
                  -- path                | str        | the full path of the active file
                  -- bufnr               | int        | the number of the active buffer
                  -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
                  -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
            end,
            max_name_length = 18,
            max_prefix_length = 15,
            truncate_names = true,
            tab_size = 18,
            diagnostics = "nvim_lsp",
            diagnostics_update_on_event = true,
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                return "("..count..")"
            end,
            color_icons = true,
    }
})
