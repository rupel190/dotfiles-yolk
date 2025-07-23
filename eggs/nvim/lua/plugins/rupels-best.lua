return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        formatters = {
          file = {
            -- whatever sane or insane value you need, default was 40
            truncate = 300,
          },
        },
      },
    },
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
        vim.keymap.set({ "n", "v" }, "<leader>gn", ":GpChatNew<cr>", { desc = "GPT chat new" }),
        vim.keymap.set({ "n", "v" }, "<leader>gt", ":GpChatToggle<cr>", { desc = "GPT chat toggle" }),
        -- TODO: Remove default C-g whatever shortcuts

        providers = {
          anthropic = {
            disable = false,
            endpoint = "https://api.anthropic.com/v1/messages",
            secret = "<SECRET>", -- TODO: Remove!!!
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
