return {

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      keys[#keys + 1] = { "gi", "<cmd>lua vim.lsp.buf.hover()<CR>" }
      -- disable a keymap
      keys[#keys + 1] = { "K", false }
      -- add a keymap
      --keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    end,
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Add your specific configuration here
      opts.completion = {
        autocomplete = false,
      }
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
          if cmp.visible() then
            local entry = cmp.get_selected_entry()
            if not entry then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
              cmp.confirm()
            end
          else
            fallback()
          end
        end, { "i", "s", "c" }),
      })
    end,
  },
}
