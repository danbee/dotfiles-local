require_relative "empty_file"

class ToolsFile
  def initialize
  end

  def tools
    @tools ||= format_tools
  end

  private

  def format_tools
    Hash[tools_file.lines.map do |tool|
      tool.split
    end]
  end

  def tools_file
    File.read(".tool-versions")
  rescue
    EmptyFile.new
  end
end
