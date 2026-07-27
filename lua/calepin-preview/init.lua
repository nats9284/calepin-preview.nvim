local M = {}

function M.setup(opts)
  opts = opts or {}
  vim.api.nvim_create_user_command('Calepin', function()
    local path = vim.api.nvim_buf_get_name(0)
    local options = { 'watch', path, '--eval-only' }
    if path ~= '' and Watch_pid == nil then
      Calepin_handle, Calepin_pid = vim.uv.spawn(
        'calepin',
        { args = options },
        function()
          vim.print 'Calepin is no longer watching.'
          Watch_pid = nil
        end
      )
      print(vim.fn.printf('calepin is watching %s in the background.', path))
      Watch_pid = Calepin_pid
    end
  end, {})

  vim.api.nvim_create_user_command('CalepinStop', function()
    local path = vim.api.nvim_buf_get_name(0)
    if path ~= '' and Watch_pid ~= nil then
      Calepin_handle:kill()
      vim.print 'Calepin stopped watching.'
    else
      vim.print 'Calepin is not running.'
    end
  end, {})
end

return M
