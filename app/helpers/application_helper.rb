module ApplicationHelper
  def page_title
    base_title = "Microblog"
    if @page_title.nil?
      base_title
    else
      "#{base_title} | #{@page_title}"
    end
  end
end
