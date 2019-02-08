module Samplar
  class Engine < ::Rails::Engine
    isolate_namespace Samplar

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
