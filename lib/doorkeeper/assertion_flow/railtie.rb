module Doorkeeper
  module AssertionFlow
    class Railtie < ::Rails::Railtie

      initializer 'doorkeeper.assertion_flow' do
        Doorkeeper::Helpers::Controller.send :include, Doorkeeper::AssertionFlow
      end

    end
  end
end
