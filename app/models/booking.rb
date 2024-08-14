class Booking < ApplicationRecord
  belongs_to :vehicule
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w[Pending Accepted Declined passed] }

end
