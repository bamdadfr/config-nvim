return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "mxsdev/nvim-dap-vscode-js",
      dependencies = {
        {
          "microsoft/vscode-js-debug",
          lazy = false,
          build = "pnpm i && npx gulp vsDebugServerBundle && mv dist out",
        },
      },
      config = function()
        local base = vim.fn.stdpath("data")
        local path = base .. "/lazy/vscode-js-debug"

        require("dap-vscode-js").setup({
          debugger_path = path,
          adapters = {
            "pwa-node",
          },
          -- adapters = {
          --   "pwa-node",
          --   "pwa-chrome",
          --   "pwa-msedge",
          --   "node-terminal",
          --   "pwa-extensionHost",
          -- }, -- which adapters to register in nvim-dap
        })

        for _, language in ipairs({ "typescript", "javascript" }) do
          require("dap").configurations[language] = {
            -- nodejs
            {
              type = "pwa-node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "pwa-node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
            -- jest
            {
              type = "pwa-node",
              request = "launch",
              name = "Debug Jest Tests",
              -- trace = true, -- include debugger info
              runtimeExecutable = "node",
              runtimeArgs = {
                "./node_modules/jest/bin/jest.js",
                "--runInBand",
              },
              rootPath = "${workspaceFolder}",
              cwd = "${workspaceFolder}",
              console = "integratedTerminal",
              internalConsoleOptions = "neverOpen",
            },
          }
        end
      end,
    },
  },
}
