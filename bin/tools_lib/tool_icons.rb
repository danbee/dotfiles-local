module ToolIcons
  TOOL_ICONS = {
    "crystal" => "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAGFBMVEVHcEzZ2dnY2NjZ2dnd3d3a2trZ2dnY2NhQY3HBAAAAB3RSTlMAZ92PHDu1Fk86EAAAAI5JREFUeNrNjzsOgDAMQ3F+vf+NEQN2IxEmBt7U9rmKc3xKIN69rWWOePEXVygnLwo5eBGDJzl4nrx51XMmm9eCphKbL24fi4CBfRoUKD4aFHAFbHuEwk+LgvNUoZfQBbS9BBO1dnoztAq9RN4js3k/yF0Kj16jUYPXz+5FDl7U4EWk2+BFoIx+IlH0v+EEankKFECZCMwAAAAASUVORK5CYII=",
    "elixir" => "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAGFBMVEVHcEx/Z916Ytl6Ydl6Ytp8ZNp7Ytp6Ytmj2hGuAAAAB3RSTlMAGeHBoT54bVkLIwAAAH1JREFUeNrNk0sOAzEMQuMv979x5V0njFGXfVsscIxybiqPwhKh9HJAOSSgBiwwxKo7MLjUh1L6vsTkK4vGF24cgAdhfIAnXtJgiNo24BxO4F0dr7QYuI6Ohd8dAq+EeuaQ66G4tNYGvAV3asG6LjSN/0RcXTLW4YBn2/kvPr/BC1y3ed4EAAAAAElFTkSuQmCC",
    "nodejs" => "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAgMAAAAOFJJnAAAADFBMVEVHcExvuztvuDlvuTijLMEbAAAAA3RSTlMAQMCRa0lrAAAANklEQVR4AWMgErBNgDLyf0IF/v+HCOX///8TKgAUgghAhP6DAR0YcEvhzoA7DOFUhOMR3iEMAH4wa5VMF4BbAAAAAElFTkSuQmCC",
    "python" => "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAMFBMVEVHcEyQo5pGjM5GispFisxEisxEiszWpirWpirYpyvWpirbqSzOpTNmkavXqCvYqitbyuh6AAAAEHRSTlMACEXg//f84f9c9B7Aw1Mxvf5QxwAAAIZJREFUeNq909EKhDAMRNG2aZvYrfr/f7srioNhloKg59ULGUTDy+IhcEnyQRINJJ8KDWoGeqXcDLCfncB+R81MJ78fqtpPi9jvqW0+mOfUUSCNB3VXpBsCbJi1GZCgG9BA/wd5FAgP8KKSbNt90JZwpQYr+/DUXX8g6G6/F1c9n0+jH+ddX6eCCwZdgedvAAAAAElFTkSuQmCC",
    "ruby" => "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAGFBMVEVHcEy/Qzm8QDW+Qje8QDW9QTa9QDa8QTZmAPnqAAAAB3RSTlMAJvFL33C/T+QPRAAAAF1JREFUeNrN0DkKwDAQBEHd/v+PDcIwhgLFmrQ62S03rbbnt1bPblFHzGI7GxWnwC10i7hru1hCtvgAt1LgKfRevvUU+KGIp9BTHJwCp8Apppoi7iZOgVPgFPgFewH6bQsqZElHlwAAAABJRU5ErkJggg==",
  }.freeze

  def tool_icon(tool)
    "\e]1337;File=inline=1;height=1:#{TOOL_ICONS[tool]}\a"
  end
end
