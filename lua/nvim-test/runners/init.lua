local PREFIX = "nvim-test.runners."
---@class runners
---@field cs "dotnet"
---@field go "go-test"
---@field haskell "hspec"
---@field  javascript "jest" | "jest-ecma" | "mocha"
---@field  javascriptreact "jest" | "jest-ecma" | "mocha"
---@field  typescript "jest" | "jest-ecma" | "mocha"
---@field  typescriptreact "jest" | "jest-ecma" | "mocha"
---@field ruby "rspec"
---@field rust "cargo-test"
---@field lua "busted"
---@field python "pytest"
---@type runners
local mt = {
  __newindex = function(t, k, v)
    v = PREFIX .. v
    rawset(t, k, v)
  end
}
local runners = {}
setmetatable(runners, mt)
runners.cs = "dotnet"
runners.go = "go-test"
runners.haskell = "hspec"
runners.javascriptreact = "jest"
runners.javascript = "jest"
runners.lua = "busted"
runners.python = "pytest"
runners.ruby = "rspec"
runners.rust = "cargo-test"
runners.typescript = "jest"
runners.typescriptreact = "jest"
return runners
