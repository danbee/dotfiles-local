class ToolsFile
  def initialize
  end

  def tools
    @tools ||= format_tools
  end

  private

  def format_tools
    Hash[tools_file.lines.map do |tool|
      name, version, source = tool.split
      [name, { version: version, source: source }]
    end]
  end

  def tools_file
    `asdf current 2>&1`
  end
end
