return{
    {
        "github/copilot.vim",
        lazy = false,
    },

-- Copilot Chat Plugin Configuration
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      -- Shared dependency; lazy matches your existing plenary setup
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken", -- Compiles tokenizer locally for faster performance
    -- Customize UI and Behavior Options
    opts = {
      debug = false, -- Set to true to trace logs if things break
      window = {
        layout = "vertical", -- Options: 'vertical', 'horizontal', 'float'
        width = 0.4,        -- Takes up 40% of the screen width on the side
        row = nil,
        col = nil,
        title = " Copilot Chat ",
      },
      show_help = true, -- Displays help keys at the top of the chat panel
    },
  }
}
