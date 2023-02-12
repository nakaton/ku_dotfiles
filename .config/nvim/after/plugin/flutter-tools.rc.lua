local status, flutterTools = pcall(require, "flutter-tools")
if (not status) then return end

flutterTools.setup({
  ui = {
    border = "rounded",
    notification_style = "native",
  },
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    },
  },
  widget_guides = {
    enabled = true,
    debug = true,
  },
  closing_tags = {
    highlight = "Comment",
    prefix = "// ",
    enabled = true,
  },
  lsp = {
    color = {
      enabled = false,
      background = true,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
    settings = {
      showTodos = true,
      enableSnippets = true,
      completeFunctionCalls = false,
    },
  },
  debugger = {
    enabled = true,
    run_via_dap = false,
  },
  dev_log = {
    enabled = true,
    open_cmd = "tabedit", -- command to use to open the log buffer
  },
})
