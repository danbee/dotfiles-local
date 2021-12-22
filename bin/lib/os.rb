class OS
  ICONS = {
    "Darwin" => "",
    "Linux" => "",
    "FreeBSD" => "",
  }

  def os
    "#{icon} #{name}"
  end

  private

  def name
    @os ||= `uname -s`.strip
  end

  def icon
    ICONS[name]
  end
end
