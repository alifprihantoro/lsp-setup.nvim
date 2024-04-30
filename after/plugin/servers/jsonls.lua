local lsp = require 'lspconfig'
local root_path = vim.fn.stdpath 'config' .. '/schema/json/'

lsp.jsonls.setup {
  settings = {
    json = {
      schemas = {
        {
          description = 'package json',
          fileMatch = { 'package.json' },
          url = root_path .. 'package.json',
        },
        {
          description = 'TypeScript compiler configuration file',
          fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
          url = root_path .. 'tsconfig.json',
        },
        {
          description = 'Babel configuration',
          fileMatch = { '.babelrc.json', '.babelrc', 'babel.config.json' },
          url = root_path .. 'lerna.json',
        },
        {
          description = 'ESLint config',
          fileMatch = { '.eslintrc.json', '.eslintrc' },
          url = root_path .. 'eslintrc.json',
        },
        {
          description = 'Prettier config',
          fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
          url = root_path .. 'prettierrc.json',
        },
        {
          description = 'Vercel Now config',
          fileMatch = { 'now.json' },
          url = root_path .. 'now.json',
        },
        {
          description = 'Stylelint config',
          fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
          url = root_path .. 'stylelintrc.json',
        },
        {
          description = 'Turborepo config',
          fileMatch = { 'turbo.json' },
          url = root_path .. 'turbo.json',
        },
      },
      validate = { enable = true },
    },
  },
}
