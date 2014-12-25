module Doorkeeper
  module Helpers
    module Controller

      def resource_owner_from_assertion
        instance_eval &Doorkeeper.configuration.resource_owner_from_assertion
      end

    end
  end
end
