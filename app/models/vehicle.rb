class Vehicle < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :model, presence: true, length: { maximum: 250 }
  validates :picture, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :accidents, numericality: { greater_than_or_equal_to: 0 }

  def as_json(options = {})
    super(options.merge(
      only: %i[id model picture description price brand year color accidents registration_plate]
    ))
  end
end

class Reservation < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
end
