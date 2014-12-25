module Doorkeeper
  class Server

    def resource_owner_from_assertion
      context.send :resource_owner_from_assertion
    end

  end
end
