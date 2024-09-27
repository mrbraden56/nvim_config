return {
  config = function()
    local function get_test_command()
      -- This is just an example. Modify this to return your actual test command.
      return 'python -m unittest discover'
    end

    local function run_tests_in_floaterm()
      local command = get_test_command()
      vim.cmd('FloatermNew --autoclose=0 ' .. command)
    end

    -- Set up the keybinding
    vim.keymap.set('n', '<leader>rpt', run_tests_in_floaterm, { desc = 'Run tests in Floaterm' })
  end,
}
