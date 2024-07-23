local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'powershell' }
   options.launch_menu = {
      { label = 'PowerShell', args = { 'powershell' } },
      {
         label = 'Git Bash',
         args = { 'D:\\software\\GIT\\Git\\bin\\bash.exe' },
      },
      {
         label = '虚拟机',
         args = { 'ssh', 'tongwz@192.168.56.101', '-p', '22' },
      },
      { label = 'Cmd', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
      { label = 'Zsh', args = { 'zsh' } },
   }
end

return options
