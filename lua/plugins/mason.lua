return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "netcoredbg",
        "omnisharp",
        "csharpier",
        "js-debug-adapter",
        "vtsls",
      })
    end,
  },
}
