class Talent < ApplicationRecord
  # include Bookable

  belongs_to :user
  has_many :talent_services

  has_many_attached :images
end
