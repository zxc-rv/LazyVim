return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
        ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
        ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
        ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
        ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
        ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
        ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
 ]],
        keys = {
          {
            icon = "",
            key = "f",
            desc = "Find File",
            action = function()
              if vim.fn.has("win32") == 1 then
                require("telescope.builtin").find_files({
                  search_dirs = {
                    vim.fn.expand("$USERPROFILE"),
                    "S:/Github",
                  },
                })
              else
                require("telescope.builtin").find_files({
                  cwd = "/",
                  find_command = {
                    "fd",
                    "--type",
                    "f",
                    "--max-depth",
                    "5",
                    "--exclude",
                    "dev",
                    "--exclude",
                    "sys",
                    "--exclude",
                    "proc",
                    "--exclude",
                    "boot",
                    "--exclude",
                    "run",
                    "--exclude",
                    "bin",
                    "--exclude",
                    "sbin",
                    "--exclude",
                    "lib",
                    "--exclude",
                    "mnt",
                    "--exclude",
                    "srv",
                    "--exclude",
                    "tmp",
                    ".",
                    "/",
                  },
                })
              end
            end,
          },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          {
            icon = "",
            key = "r",
            desc = "Recent Files",
            action = function()
              require("telescope.builtin").oldfiles()
            end,
          },
          {
            icon = "",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "", key = "s", desc = "Restore Session", section = "session" },
          { icon = "", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = "", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
