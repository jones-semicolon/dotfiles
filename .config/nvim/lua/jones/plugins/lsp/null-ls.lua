local async_formatting = function(bufnr)
	bufnr = bufnr or vim.api.nvim_get_current_buf()
	if vim.b.formatting then
		return
	end
	vim.b.formatting = true

	vim.lsp.buf_request(
		bufnr,
		"textDocument/formatting",
		vim.lsp.util.make_formatting_params({}),
		function(err, res, ctx)
			-- print(err)
			vim.b.formatting = false
			if err then
				-- local err_msg = type(err) == "string" and err or err.message
				-- you can modify the log message / level (or ignore it completely)
				-- vim.notify("formatting error: " .. err_msg, vim.log.levels.ERROR)
				return
			end

			-- don't apply results if buffer is unloaded or has been modified
			if not vim.api.nvim_buf_is_loaded(bufnr) or vim.api.nvim_buf_get_option(bufnr, "modified") then
				return
			end

			if res then
				local client = vim.lsp.get_client_by_id(ctx.client_id)
				vim.lsp.util.apply_text_edits(res, bufnr, client and client.offset_encoding or "utf-16")
				vim.api.nvim_buf_call(bufnr, function()
					vim.cmd("silent! noautocmd update")
				end)
				-- vim.notify(vim.bo.filetype .. " formatted", vim.log.levels.INFO)
			end
		end
	)
end
--
-- -- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
--
-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	print("null ls not installed")
	return
end

-- local none_ls = require("none-ls")

-- import null-ls helpers
local helpers = require("null-ls.helpers")

-- create a custom source that runs shellcheck and returns diagnostics
local shellcheck = helpers.make_builtin({
	method = null_ls.methods.DIAGNOSTICS,
	filetypes = { "sh" },
	generator_opts = {
		command = "shellcheck",
		to_stdin = true,
		format = "json",
		check_exit_code = function(code)
			return code <= 1
		end,
		on_output = function(params)
			local diagnostics = {}
			for _, diagnostic in ipairs(params.output) do
				table.insert(diagnostics, {
					row = diagnostic.line,
					col = diagnostic.column,
					message = diagnostic.message,
					severity = diagnostic.level,
					source = "shellcheck",
				})
			end
			return diagnostics
		end,
	},
	factory = helpers.generator_factory,
})

-- register sources
null_ls.register(shellcheck)
null_ls.register(null_ls.builtins.formatting.prettier.with({
	disabled_filetypes = {
		"typescriptreact",
		"vue",
		"lua",
	},
}))
null_ls.register(null_ls.builtins.formatting.ktlint.with({
	filetypes = { "kotlin", "kt", "kts" },
}))
null_ls.register(null_ls.builtins.formatting.stylua.with({
	filetypes = { "lua" },
}))
null_ls.register(null_ls.builtins.diagnostics.eslint_d.with({
	condition = function(utils)
		return utils.root_has_file(".eslintrc.js")
	end,
}))
null_ls.register(null_ls.builtins.formatting.black.with({
	filetypes = { "python" },
}))
null_ls.register(null_ls.builtins.diagnostics.mypy.with({
	filetypes = { "python" },
}))
null_ls.register(null_ls.builtins.diagnostics.ruff.with({
	filetypes = { "python" },
}))

-- configure null-ls
null_ls.setup({
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- vim.lsp.buf.format({
					--   filter = function(client)
					--     return client.name == "null-ls"
					--     -- return client.name == vim.bo.filetype
					--   end,
					--   bufnr = bufnr,
					--   async = true,
					-- })
					async_formatting(bufnr)
				end,
			})
		end
	end,
})
