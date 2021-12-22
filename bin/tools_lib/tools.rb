require_relative "tools_file"
require_relative "tool_icons"

class Tools
  include ToolIcons

  attr_reader :tools

  def initialize
    @tools = ToolsFile.new.tools
  end

  def list_tools
    tools.sort.each do |tool, meta|
      if available_tools.include?(tool)
        puts "#{tool_icon(tool)}" \
             "#{tool.ljust(max_length)}  " \
             "#{version(meta)}"
      end
    end
  end

  private

  def version(meta)
    if installed?(meta)
      "\e[37m#{meta[:version]}"
    else
      "\e[31m#{meta[:version]}* (not installed)"
    end
  end

  def max_length
    @max_length ||= installed_tools.max_by(&:length).length
  end

  def installed_tools
    tools.keys & available_tools
  end

  def available_tools
    TOOL_ICONS.keys
  end

  def installed?(meta)
    meta[:source].start_with?("/")
  end
end
