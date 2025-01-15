return {
    'github/copilot.vim',
    -- Only enable copilot if the file ~/.config/nvim_flags/copilot_enabled exists
    cond = function ()
        local flag = io.open(os.getenv("HOME") .. "/.config/nvim_flags/copilot_enabled", "r")
        if flag then
            return true
        else
            return false
        end
    end
}
