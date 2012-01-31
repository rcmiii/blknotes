module ApplicationHelper
  def title
    base = "blknotes - Find Your Point of View"
    if @title.nil?
      base
    else
      "#{base} | #{@title}"
    end
  end
end
