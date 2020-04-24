module Spree
  module RoleDecorator
    define_method :affiliate do
      find_or_create_by(name: :affiliate)
    end
  end
  Role.prepend(RoleDecorator)
end
