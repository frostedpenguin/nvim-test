local Runner = require "nvim-test.runner"

local query = [[
  ((expression_statement
    (call_expression
      function: (identifier) @method-name
      (#match? @method-name "^(describe|test|it)")
      arguments: (arguments [
        ((string) @test-name)
        ((template_string) @test-name)
      ]
    )))
  @scope-root)
]]

local jest_ecma = Runner:init({
  command = { "node" },
  file_pattern = "\\v(__tests__/.*|(spec|test))\\.(js|jsx|coffee|ts|tsx)$",
  find_files = { "{name}.test.{ext}", "{name}.spec.{ext}" },
  args = { "--experimental-vm-modules", "node_modules/jest/bin/jest.js" }
}, {
  javascript = query,
  typescript = query,
})

function jest_ecma:parse_testname(name)
  return name:gsub("^[\"'`]", ""):gsub("[\"'`]$", "")
end

function jest_ecma:build_test_args(args, tests)
  table.insert(args, "-t")
  table.insert(args, "^" .. table.concat(tests, " ") .. "$")
end

return jest_ecma
