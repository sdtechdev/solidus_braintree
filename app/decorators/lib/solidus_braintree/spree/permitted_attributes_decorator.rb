# frozen_string_literal: true

module Lib::SolidusBraintree::Spree::PermittedAttributesDecorator
  def self.prepended(base)
    base.prepend ::SolidusBraintree::PermittedAttributesConcern
  end

  ::Spree::PermittedAttributes.singleton_class.prepend(self)
end
