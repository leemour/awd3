module ApplicationHelper
  def counter
    @counter ||= 0
    pluralize @counter, 'time' if @counter > 5
  end
end
