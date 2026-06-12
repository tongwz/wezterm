return {
    -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
    ssh_domains = {
        {
            multiplexing = 'None',
            name = "JumpServer",
            remote_address = "172.16.32.17:2222",
            username = "tongweizhen",
            ssh_option = {},
        },
        {
            multiplexing = 'None',
            name = "DevNow0325",
            remote_address = "101.37.29.111:22",
            username = "root",
            ssh_option = {},
        },
        {
            -- The connection is an ssh connection, don't use any multiplexing.
            multiplexing = 'None',

            -- The name of this specific domain. Must be unique amongst
            name = 'test1',

            -- identifies the host:port pair of the remote server
            -- Can be a DNS name or an IP address with an optional
            -- ":port" on the end.
            remote_address = '120.26.121.166:22',

            -- Whether agent auth should be disabled.
            -- Set to true to disable it.
            -- no_agent_auth = false,

            -- The username to use for authenticating with the remote host
            username = 'root',

            -- Specify a SSH connection authentication file
            -- Default authentication file is "~/.ssh/id_rsa"
            ssh_option = {
                -- identityfile = 'C:\\Users\\Fizz\\.ssh\\id_rsa',
            },
        },
        {
            multiplexing = 'None',
            name = "test2",
            remote_address = "120.26.121.89:22",
            username = "root",
            ssh_option = {},
        },
        {
            multiplexing = 'None',
            name = "TestSync",
            remote_address = "114.55.64.104:22",
            username = "root",
            ssh_option = {},
        },
        {
            multiplexing = 'None',
            name = "rabbitmq",
            remote_address = "47.111.137.185:22",
            username = "root",
            ssh_option = {},
        },
        {
            multiplexing = 'None',
            name = "Pro-47.97.8.150",
            remote_address = "47.97.8.150:22",
            username = "root",
            ssh_option = {},
        },
        {
            multiplexing = 'None',
            name = "47.99.73.115",
            remote_address = "47.99.73.115:22",
            username = "root",
            ssh_option = {},
        },
    },

    -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
    unix_domains = {},

    -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
    wsl_domains = {
        -- { name = 'WSL:Ubuntu', distribution = 'Ubuntu', username = 'kevin', default_cwd = '/home/kevin', default_prog = { 'fish' }, },
    },
}
