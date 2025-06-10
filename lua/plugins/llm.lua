return {
  "huggingface/llm.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    backend = "ollama",
    model = "qwen2.5-coder:1.5b-base",
    url = "https://ollama.nclsp.com",
    fim = {
      enabled = true,
    },
    debounce_ms = 150,
    accept_keymap = "<C-l>",
    enable_suggestions_on_startup = true,
    enable_suggestions_on_files = "*", -- Keep this as a pattern
  },
  config = function(_, opts)
    local llm = require("llm")
    
    -- Wrap the original setup to add buffer checks
    local original_setup = llm.setup
    llm.setup = function(config)
      original_setup(config)
      
      -- Create autocmd to disable llm in non-modifiable buffers
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "FileType" }, {
        callback = function(args)
          local buf = args.buf
          local ft = vim.api.nvim_get_option_value("filetype", { buf = buf })
          local modifiable = vim.api.nvim_get_option_value("modifiable", { buf = buf })
          
          -- List of filetypes to exclude
          local excluded_filetypes = {
            "neo-tree",
            "neo-tree-popup",
            "notify",
            "qf",
            "help",
            "man",
            "lspinfo",
            "TelescopePrompt",
            "TelescopeResults", 
            "TelescopePreview",
            "NvimTree",
            "dashboard",
            "alpha",
          }
          
          -- Disable llm for non-modifiable buffers or excluded filetypes
          if not modifiable or vim.tbl_contains(excluded_filetypes, ft) then
            -- Try to detach the llm client from this buffer
            pcall(function()
              local clients = vim.lsp.get_clients({ bufnr = buf, name = "llm-ls" })
              for _, client in ipairs(clients) do
                vim.lsp.buf_detach_client(buf, client.id)
              end
            end)
          end
        end,
      })
    end
    
    llm.setup(opts)
  end,
}
