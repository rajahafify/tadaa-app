class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable

  has_many :talents

  has_many :carts do
    def current
      find_or_create_by(checked_out_at: nil)
    end
  end
end
