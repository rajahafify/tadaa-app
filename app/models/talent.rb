class Talent < ApplicationRecord
  # include Bookable

  belongs_to :user
  has_many :talent_services

  has_many_attached :images

  before_save :resize_images

  private

  def resize_images
    images.each do |image|
      image.variant(resize_and_pad: [400,500]).processed
    end
  end
end
