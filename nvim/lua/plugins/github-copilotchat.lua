return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
    cond = function ()
        local flag = io.open(os.getenv("HOME") .. "/.config/nvim_flags/copilot_enabled", "r")
        if flag then
            return true
        else
            return false
        end
    end
  },
}
