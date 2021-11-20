class Talent < ApplicationRecord
  include Bookable

  belongs_to :user
end
