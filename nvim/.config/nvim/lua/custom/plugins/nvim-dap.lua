return {
    {
      "mfussenegger/nvim-dap",
      dependencies = {
        "mfussenegger/nvim-dap-python",
        "rcarriga/nvim-dap-ui",
      },
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        
        -- Configure DAP UI
        dapui.setup()
        
        -- Automatically open and close the DAP UI
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
        
        vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })

        dap.adapters.python = {
          enrich_config = function(finalConfig, on_config)
            print("enrich_config")
            if final_config.envFile then
              local filePath = final_config.envFile
              for key, fn in pairs(placeholders) do
                filePath = filePath:gsub(key, fn)
              end
        
              for line in io.lines(filePath) do
                local words = {}
                for word in string.gmatch(line, "[^=]+") do
                  table.insert(words, word)
                end
                if not final_config.env then
                  final_config.env = {}
                end
                final_config.env[words[1]] = words[2]
              end
            end
        
            on_config(final_config)
          end
        }
        
        -- Setup Python
        require("dap-python").setup("python")
        
        require('dap.ext.vscode').load_launchjs(nil, { python = {'py'} })
        
        -- Keymaps
        vim.keymap.set("n", "<Leader>dc", function() require("dap").continue() end)
        vim.keymap.set("n", "<Leader>b", function() require("dap").toggle_breakpoint() end)
      end,
    },
  }