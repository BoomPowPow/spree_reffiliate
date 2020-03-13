module Spree
  module AppConfigurationDecorator
    def self.prepended(base)
      preference :admin_affiliates_per_page, :integer, default: 10
      preference :admin_commissions_per_page, :integer, default: 10
      preference :admin_transactions_per_page, :integer, default: 10
      preference :referred_records_per_page, :integer, default: 10
      preference :referral_credits, :decimal, default: 0
      preference :referrer_benefit_enabled, :boolean, default: false
    end
  end
  AppConfiguration.prepend(AppConfigurationDecorator)
end