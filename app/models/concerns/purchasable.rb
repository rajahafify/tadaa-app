module Purchasable
  extend ActiveSupport::Concern
  included do 
    belongs_to :cart_item, as: :purchasable
  end
end
