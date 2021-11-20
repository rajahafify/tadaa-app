module Bookable
  extend ActiveSupport::Concern
  included do 
    belongs_to :booking, as: :bookable
  end
end
