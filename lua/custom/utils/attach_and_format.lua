local on_attach = require("plugins.configs.lspconfig").on_attach
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

local format = function(bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })

    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end
    })
end

local attach_and_format = function(client, bufnr)
    on_attach(client, bufnr)
    -- format(bufnr)
end

return attach_and_format
