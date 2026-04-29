-- lua\plugins\lazygit.lua
return {
    "kdheepak/lazygit.nvim",
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- 透過 dependencies 確保這是在特定 UI 套件基礎上運行的
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- 綁定快捷鍵
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
}
