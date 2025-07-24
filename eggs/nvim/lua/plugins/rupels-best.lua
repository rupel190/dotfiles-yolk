return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local wk = require("which-key")
      wk.add({
        { "<leader>m", group = "bookmarks", icon = "" },
      }, { mode = "n" })
      wk.add({
        { "<leader>a", group = "ai", icon = "" },
      }, { mode = { "n", "v" } })
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        formatters = {
          file = {
            -- lines to show before truncating grep path (snacks window) / default is 40
            truncate = 300,
          },
        },
      },
    },
  },

  -- Bookmarks
  {
    "EvWilson/spelunk.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- For window drawing utilities
      -- 'nvim-telescope/telescope.nvim',   -- Optional: for fuzzy search capabilities
      "nvim-treesitter/nvim-treesitter", -- Optional: for showing grammar context
    },
    config = function()
      require("spelunk").setup({
        enable_persist = true,
        persist_by_git_branch = true,
        base_mappings = {
          toggle = "<leader>mm",
          add = "<leader>ma",
          next_bookmark = "<leader>mn",
          prev_bookmark = "<leader>mp",
          search_bookmarks = "<leader>mf",
          search_current_bookmarks = "<leader>mc",
          search_stacks = "<leader>ms",
        },
      })
    end,
  },

  {
    "robitx/gp.nvim",
    config = function()
      require("gp").setup({
        default_chat_agent = "ChatClaude-3-5-Haiku",
        default_command_agent = "CodeClaude-3-7-Sonnet",
        chat_template = require("gp.defaults").short_chat_template,
        chat_conceal_model_params = true, -- Default, included to revisit later
        --
        -- optional shortcut bindings
        vim.keymap.set({ "n", "v" }, "<leader>an", ":GpChatNew<cr>", { desc = "GPT chat new" }),
        vim.keymap.set({ "n", "v" }, "<leader>at", ":GpChatToggle<cr>", { desc = "GPT chat toggle" }),
        -- TODO: Remove default C-g whatever shortcuts and add others

        providers = {
          anthropic = {
            disable = false,
            endpoint = "https://api.anthropic.com/v1/messages",
            secret = { "cat", "/home/rupel/.config/gpt-api.txt" },
          },
        },
        agents = {
          {
            provider = "anthropic",
            name = "ChatClaude-3-5-Haiku",
            chat = true,
            command = false,
            -- string with model name or table with model name and parameters
            model = { model = "claude-3-5-haiku-latest", temperature = 0.8, top_p = 1 },
            -- system prompt (use this to specify the persona/role of the ai)
            system_prompt = require("gp.defaults").chat_system_prompt,
          },
          {
            provider = "anthropic",
            name = "CodeClaude-3-7-Sonnet",
            chat = false,
            command = true,
            -- string with model name or table with model name and parameters
            model = { model = "claude-3-7-sonnet-latest", temperature = 0.8, top_p = 1 },
            system_prompt = require("gp.defaults").code_system_prompt,
          },
        },
      })
    end,
  },
}
