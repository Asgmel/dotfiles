return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    local neogit = require 'neogit'
    local diffview = require 'diffview.lib' -- Needed to check if Diffview is open

    neogit.setup {
      integrations = { diffview = true }, -- Enable Diffview integration
    }

    -- Function to toggle Diffview
    local function toggle_diffview()
      if diffview.get_current_view() then
        vim.cmd 'DiffviewClose'
      else
        vim.cmd 'DiffviewOpen'
      end
    end

    -- Function to toggle Diffview File History
    local function toggle_diffview_history()
      if diffview.get_current_view() then
        vim.cmd 'DiffviewClose'
      else
        vim.cmd 'DiffviewFileHistory'
      end
    end

    -- Keybindings
    vim.keymap.set('n', '<leader>gs', function()
      neogit.open()
    end, { silent = true, noremap = true, desc = 'Open Neogit' })

    vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true, desc = 'Neogit Commit' })

    vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true, desc = 'Neogit Pull' })

    vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true, desc = 'Neogit Push' })

    vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true, desc = 'Telescope Git Branches' })

    vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true, noremap = true, desc = 'Git Blame' })

    vim.keymap.set('n', '<leader>gl', ':Neogit log<CR>', { silent = true, noremap = true, desc = 'Neogit Log' })

    -- Toggle Diffview with the same keybind used to open it
    vim.keymap.set('n', '<leader>gd', toggle_diffview, { silent = true, noremap = true, desc = 'Toggle Diffview' })

    -- Toggle Diffview File History
    vim.keymap.set('n', '<leader>gD', toggle_diffview_history, { silent = true, noremap = true, desc = 'Toggle Diffview File History' })
  end,
}
