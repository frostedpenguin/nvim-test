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
local runners = {
  cs = "dotnet",
  go = "go-test",
  haskell = "hspec",
  javascriptreact = "jest",
  javascript = "jest",
  lua = "busted",
  python = "pytest",
  ruby = "rspec",
  rust = "cargo-test",
  typescript = "jest",
  typescriptreact = "jest",
}
return runners
