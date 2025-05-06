local platform = require('utils.platform')()
local wezterm = require 'wezterm'

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
        { label = 'testHost1', args = { 'ssh', 'root@120.26.121.166' } },
        { label = 'testHost2', args = { 'ssh', 'root@120.26.121.89' } },
        { label = 'testSync', args = { 'ssh', 'root@114.55.64.104' } },
        { label = 'devNow0325', args = { 'ssh', 'root@101.37.29.111' } },
        { label = 'rabbitmq', args = { 'ssh', 'root@47.111.137.185' } },
    }
end

-- 用于存储启动菜单项的映射表
local label_map = {}
for _, item in ipairs(options.launch_menu) do
    if item.args and item.args[1] == 'ssh' then
        local hostname = item.args[2]:match("([^@]+)$")
        label_map[hostname] = item.label
    end
end

-- 监听面板激活事件
wezterm.on('pane-active', function(pane)
    -- 获取当前面板所在的标签
    local tab = pane:tab()
    -- 获取当前终端的命令行
    local cmd = pane:get_foreground_process_info().command_line
    if cmd and cmd:match("^ssh") then
        -- 提取主机名
        local hostname = cmd:match("ssh%s+[^@]+@([^:%s]+)")
        if hostname then
            -- 使用启动菜单中的 label 作为标题
            local label = label_map[hostname]
            if label then
                tab:set_title(label)
            else
                tab:set_title(hostname) -- 如果没有匹配的 label，使用主机名
            end
        end
    end
end)

return options
