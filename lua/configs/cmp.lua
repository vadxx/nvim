local cmp_st, cmp = pcall(require, 'cmp')
local cmp_icons_st, lspkind = pcall(require, 'lspkind')
local luasnip_st, luasnip = pcall(require, 'luasnip')

if not (cmp_st and cmp_icons_st and luasnip_st) then
	return
end

require("luasnip.loaders.from_vscode").lazy_load()


cmp.setup {
	-- Load snippet support
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

-- Completion settings
	completion = {
		keyword_length = 3
	},

	-- Key mapping
	mapping = {
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},

		-- Tab mapping
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, {"i", "s"}),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {"i", "s"}),
	},

	-- Load sources, see: https://github.com/topics/nvim-cmp
	sources = {
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ name = 'buffer' },
	},

	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 30,
		})
	}
}
