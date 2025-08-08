local M = {}

---@type HighlightsFn
function M.get(c)
    -- overriding lsp semantic highlights
    vim.api.nvim_create_autocmd("LspTokenUpdate", {
        callback = function(args)
            local mappings = {
                ["function"] = {
                    capture = "function.call",
                    override = "EmbarkLspFunctionCall"
                },
                ["method"] = {
                    capture = "function.method.call",
                    override = "EmbarkLspFunctionCall"
                }
            }

            local data = mappings[args.data.token.type]
            if data ~= nil then
                local buf = args.buf
                local token = args.data.token
                local captures = vim.treesitter.get_captures_at_pos(
                    buf, token.line, token.start_col
                )

                for _, i in ipairs(captures) do
                    if i.capture == data.capture then
                        vim.lsp.semantic_tokens.highlight_token(
                            token, buf, args.data.client_id, data.override
                        )
                        break
                    end
                end
            end
        end
    })

    ---@type Highlights
    return {
        ["EmbarkLspFunctionCall"]          = { link = "@function.call" },
    }
end

return M
