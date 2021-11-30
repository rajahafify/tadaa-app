class Talent < ApplicationRecord
  # include Bookable

  belongs_to :user
  has_many :talent_services

  has_many_attached :images

  after_commit :resize_images, on: [:create, :update]

  private

  def resize_images
    images.each do |image|
      image.variant(resize_and_pad: [400,500])
    end
  end
end
