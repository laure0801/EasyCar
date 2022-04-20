class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
