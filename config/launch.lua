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
            args = { 'ssh', 'tongwz@192.168.56.101' },
        },
        { label = 'Cmd', args = { 'cmd' } },
        { label = 'Nushell', args = { 'nu' } },
    }
elseif platform.is_mac then
    options.default_prog = { '/opt/homebrew/bin/fish' }
    options.launch_menu = {
        { label = 'Bash', args = { 'bash' } },
        { label = 'Fish', args = { '/opt/homebrew/bin/fish' } },
        { label = '测试服_47.96.131.52', args = { 'ssh', 'root@47.96.131.52' } },
        { label = 'dev_114.55.64.104', args = { 'ssh', 'root@114.55.64.104' } },
    }
end

return options
