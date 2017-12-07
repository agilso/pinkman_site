module ApplicationHelper
  def escape str
    CGI::escapeHTML(str)
  end
  
  def to_do str
    raw "<p class='bg-red white breathe-xs'><b>To do:</b> #{str}</p>"
  end
    
end
