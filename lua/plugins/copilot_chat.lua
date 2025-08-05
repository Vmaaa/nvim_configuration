return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {

      question_header = "# uma ", -- Header to use for user questions
      answer_header = "# Copilot", -- Header to use for AI answers
      error_header = "# Error ", -- Header to use for errors
      separator = "---", -- Separator to use in chat
      highlight_headers = false,
      auto_follow_cursor = true,
      references_display = "virtual",
      auto_insert_mode = true,
      insert_at_end = true, -- Insert the answer at the end of the chat
      window = { layout = "vertical", border = "rounded", width = 0.5, height = 1 }, -- Window layout and border style
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
