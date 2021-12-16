module ToolIcons
  TOOL_ICONS = {
    "crystal" => "\e[1;37m",
    "elixir" => "\e[1;35m",
    "erlang" => "\e[0;31m",
    "nodejs" => "\e[38;5;118m",
    "python" => "\e[0;33m",
    "ruby" => "\e[1;31m",
    "rust" => "\e[1;37m"
  }.freeze

  def tool_icon(tool)
    " #{TOOL_ICONS[tool]}\e[0m  "
  end
end
