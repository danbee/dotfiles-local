require_relative "tools_file"
require_relative "tool_icons"

class Tools
  include ToolIcons

  attr_reader :tools

  def initialize
    @tools = ToolsFile.new.tools
  end

  def list_tools
    tools.each do |tool, version|
      if available_tools.include? tool
        puts "#{tool_icon(tool)}#{tool.ljust(max_length)} #{version}"
      end
    end
  end

  def max_length
    @max_length ||= installed_tools.max do |a, b|
      a.length <=> b.length
    end.length
  end

  def installed_tools
    tools.keys & available_tools
  end

  def available_tools
    TOOL_ICONS.keys
  end
end
