class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :city, presence: true, length: { maximum: 50 }
  validates :start_date, presence: true
  validates :return_date, presence: true
  validate :return_date_greater_than_start_date
  validate :vehicle_available_on_dates

  def as_json(options = {})
    super(options.merge(
      only: %i[id city start_date return_date vehicle_id]
    ))
  end

  private

  def return_date_greater_than_start_date
    return unless return_date <= start_date

    errors.add(:return_date, 'must be greater than start date!')
  end

  def vehicle_available_on_dates
    return unless vehicle

    conflicts = vehicle.reservations.where.not(id: self.id).where(
      '(start_date <= :start_date AND return_date >= :start_date) OR ' \
      '(start_date <= :return_date AND return_date >= :return_date) OR ' \
      '(start_date >= :start_date AND return_date <= :return_date)',
      start_date: start_date, return_date: return_date
    )

    errors.add(:vehicle, 'is already rented for the provided dates!') if conflicts.any?
  end
end