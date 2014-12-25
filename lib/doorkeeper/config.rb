module Doorkeeper
  class Config

    option :resource_owner_from_assertion,
      default: ->(routes) {
        warn I18n.t('doorkeeper.errors.messages.assertion_flow_not_configured')
        nil
      }

  end
end
