return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[h]arpoon [a]dd' })

    vim.keymap.set('n', '<leader>hs', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[h]arpoon [s]how' })

    -- Set <space>1..<space>5 be my shortcuts to moving to the files
    for _, idx in ipairs { 1, 2, 3, 4, 5 } do
      vim.keymap.set('n', string.format('<leader>%d', idx), function()
        harpoon:list():select(idx)
      end, { desc = 'Goto Harpoon ' .. idx })
    end
  end,
}
