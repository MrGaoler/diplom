module ApplicationHelper
  def footer?
    %w[abouts posts card contacts teams].include?(controller_name)
  end
end
