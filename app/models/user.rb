class User < ApplicationRecord
  has_one_attached :photo
  has_many :vehicules, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and whitespace" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and whitespace" }
  validates :birthday, presence: true

  after_create :generate_initials_image

  def generate_initials_image

    image = Cloudinary::Uploader.upload("https://via.placeholder.com/150x150.png?text=#{initials}",
      public_id: "user_#{id}_initials",
      transformation: [
        { width: 150, height: 150, gravity: "center", crop: "fill" },
        { overlay: "text:Arial_60_bold:#{initials}", gravity: "center", color: "white" }
      ]
    )

    self.update(image_url: image['secure_url'])
  end

  private

  def initials
    "#{first_name[0].upcase}#{last_name[0].upcase}"
  end

end
