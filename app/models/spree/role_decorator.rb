module Spree
  module RoleDecorator
    def affiliate
      find_or_create_by(name: 'affiliate')
    end
  end
  Role.prepend(RoleDecorator)
end
