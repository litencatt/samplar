module Samplar
  module ApplicationHelper
    def classified_name(name)
      name.split('-').map(&:titleize).join('::')
    end
  end
end
