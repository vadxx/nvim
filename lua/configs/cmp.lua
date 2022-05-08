local cmp_status_ok, cmp = pcall(require, 'cmp')
local cmp_icons_status_ok, lspkind = pcall(require, 'lspkind')
local luasnip_status_ok, luasnip = pcall(require, 'luasnip')

if not (cmp_status_ok and cmp_icons_status_ok and luasnip_status_ok) then
	return
end

lspkind.init()
cmp.setup {
	-- Load snippet support
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

-- Completion settings
	completion = {
		--completeopt = 'menu,menuone,noselect'
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
		['<Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end,
		['<S-Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end
	},

	-- Load sources, see: https://github.com/topics/nvim-cmp
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ name = 'buffer' },
	},

	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = lspkind.presets.default[vim_item.kind]
			return vim_item
		end
	}
}
