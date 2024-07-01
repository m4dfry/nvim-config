return {
  "danymat/neogen",
  event = "VeryLazy",
  config = function()
    require('neogen').setup({ snippet_engine = "luasnip" })
  end
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
}
