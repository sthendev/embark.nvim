local M = {}

---@type HighlightsFn
function M.get(c)
    -- overriding lsp semantic highlights based on treesitter captures
    vim.api.nvim_create_autocmd("LspTokenUpdate", {
        callback = function(args)
            local mappings = {
                ["function"] = {
                    captures = {
                        ["function.call"] = "EmbarkLspFunctionCall",
                    }
                },
                ["method"] = {
                    captures = {
                        ["function.call"] = "EmbarkLspFunctionCall",
                        ["function.method.call"] = "EmbarkLspFunctionCall",
                    }
                },
                ["variable"] = {
                    captures = {
                        ["constant"] = "EmbarkLspConstant",
                    }
                }
            }

            local overrides = mappings[args.data.token.type]
            if overrides then
                local buf = args.buf
                local token = args.data.token
                local captures = vim.treesitter.get_captures_at_pos(
                    buf, token.line, token.start_col
                )

                for _, i in ipairs(captures) do
                    local override = overrides.captures[i.capture]
                    if override then
                        vim.lsp.semantic_tokens.highlight_token(
                            token, buf, args.data.client_id, override
                        )
                        break
                    end
                end
            end
        end
    })

    ---@type Highlights
    return {
        ["@lsp.type.modifier"]          = { link = "@keyword.modifier" },

        EmbarkLspFunctionCall           = { link = "@function.call" },
        EmbarkLspConstant               = { link = "@constant" },
    }
end

return M
