require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        -- Programming languages
        "clangd",                                                                           -- C / C++
        "bashls", "pkgbuild_language_server",                                               -- Bash
        "lua_ls",                                                                           -- Lua
        "rust_analyzer",                                                                    -- Rust
        "golangci_lint_ls", "gopls",                                                        -- Go
        "jdtls",                                                                            -- Java
        "quick_lint_js", "tsserver", "vtsls",                                               -- JavaScript
        "tsserver", "vtsls",                                                                -- TypeScript
        "kotlin_language_server",                                                           -- Kotlin
        "jedi_language_server", "pyre", "pyright", "pylyzer", "sourcery", "ruff_lsp",       -- Python
        "pylsp",                                                                            -- Python (docs)
        "sqlls",                                                                            -- SQL
        -- Description languages
        "marksman", "prosemd_lsp", "remark_ls", "vale_ls", "zk",                            -- Markdown
        "taplo",                                                                            -- TOML
        "lemminx",                                                                          -- XML
        "yamlls",                                                                           -- YAML
        -- Web
        "html",                                                                             -- HTML
        "cssls", "cssmodules_ls", "unocss",                                                 -- CSS
        "jsonls",                                                                           -- JSON
        -- Infra
        "dockerls",                                                                         -- Docker
        "docker_compose_language_service",                                                  -- Docker Compose
        "terraformls", "tflint",                                                            -- Terraform
        "helm_ls",                                                                          -- Helm
        -- Tools
        "gradle_ls",                                                                        -- Gradle
    }
})
