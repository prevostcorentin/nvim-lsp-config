return {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod' },
    root_markers = { { 'go.mod', 'go.sum' }, '.git' },
    settings = {
        hoverKind = "FullDocumentation",
        linkTarget = "pkg.go.dev",
        linksInHover = "gopls",
        directoryFilters = { "-**/node_modules" },
    },
}
