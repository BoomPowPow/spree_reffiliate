module Spree
  module CheckoutControllerDecorator
    def self.prepended(base)
      base.before_action :set_affilate, only: :update
      base.after_action :clear_session, only: :update
    end
  
    private
      def set_affilate
        if @order.payment? && session[:affiliate]
          @order.affiliate = Spree::Affiliate.find_by(path: session[:affiliate])
        end
      end
  
      def clear_session
        session[:affiliate] = nil if @order.completed?
      end
  end
  CheckoutController.prepend(CheckoutControllerDecorator)
end
