require_relative 'request/assertion'

require_relative 'assertion_flow/version'
require_relative 'assertion_flow/railtie'


module Doorkeeper
  module AssertionFlow

    def resource_owner_from_assertion
      instance_eval &Doorkeeper.configuration.resource_owner_from_assertion
    end

  end
end

module Doorkeeper
  class Server

    def resource_owner_from_assertion
      context.send :resource_owner_from_assertion
    end

  end
end

module Doorkeeper
  class Config

    option :resource_owner_from_assertion,
      default: ->(routes) {
        warn I18n.t('doorkeeper.errors.messages.assertion_flow_not_configured')
        nil
      }

  end
end
