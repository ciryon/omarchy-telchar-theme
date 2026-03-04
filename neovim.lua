return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#0b0b0c",
                bg_dark = "#0b0b0c",
                bg_highlight = "#9c7160",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#fcf6de",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#EFDB8F",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#9c7160",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#ff4a14",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ffa085",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#FED32B",
                -- green: Comments, strings, success states, git additions
                green = "#FBE266",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#f7c67d",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#fc855a",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#fe9267",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ffd3c2",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
