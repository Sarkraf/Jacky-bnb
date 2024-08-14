class User < ApplicationRecord
  has_many :vehicules, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and whitespace" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and whitespace" }
  validates :birthday, presence: true
end
