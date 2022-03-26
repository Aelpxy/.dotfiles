local config = {
  colorscheme = "gruvbox-material",

  plugins = {
    init = {
     "sainnhe/gruvbox-material",
    },
    treesitter = {
      ensure_installed = { "lua" },
    },
    packer = {
      compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
    },
  },

  luasnip = {
    vscode_snippet_paths = {},
  },

  ["which-key"] = {
    register_n_leader = {
    },
  },

  lsp = {
    ["server-settings"] = {
    },
  },

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  ["null-ls"] = function()
    local status_ok, null_ls = pcall(require, "null-ls")
    if not status_ok then
      return
    end

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup {
      debug = false,
      sources = {
        formatting.rufo,
        diagnostics.rubocop,
      },
      on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
          vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
        end
      end,
    }
  end,
  polish = function()
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap
    local set = vim.opt
    set.relativenumber = true
    map("n", "<C-s>", ":w!<CR>", opts)
    vim.cmd [[
      augroup packer_conf
        autocmd!
        autocmd bufwritepost plugins.lua source <afile> | PackerSync
      augroup end
    ]]
  end,
}

return config
