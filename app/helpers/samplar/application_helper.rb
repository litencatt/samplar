module Samplar
  module ApplicationHelper
    def classified_name(name)
        name.split('-').map(&:classify).join('::')
    end
  end
end
