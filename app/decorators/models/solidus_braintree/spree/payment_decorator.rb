# frozen_string_literal: true

module Models::SolidusBraintree::Spree::PaymentDecorator
  def self.prepended(base)
    base.include SolidusBraintree::PaymentBraintreeNonceConcern
    base.include SolidusBraintree::InjectDeviceDataConcern
  end

  ::Spree::Payment.prepend(self)
end
