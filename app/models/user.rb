class User < ApplicationRecord
  devise :two_factor_authenticatable, :two_factor_backupable, otp_secret_encryption_key: ENV['OTP_KEY']

  has_many :articles, foreign_key: :author_id, dependent: :destroy
  has_many :votes, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 30 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :validatable
end
