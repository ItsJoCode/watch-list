class User < ApplicationRecord
  VALID_PASSWORD_REGEX = /\A(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,}\z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :lists

  # Validations
  validates :first_name, :last_name, presence: true
  validates_uniqueness_of :first_name, scope: :last_name
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :password, presence: true, length: { minimum: 8 },
            format: { with: VALID_PASSWORD_REGEX, message: "must include at least one uppercase letter, one symbol, and one digit" }
end
