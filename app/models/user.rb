require "securerandom"

class User < ApplicationRecord
  before_create :generate_userid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :status, dependent: :destroy
  private
  def generate_userid
    self.uuid = SecureRandom.urlsafe_base64(8)
  end
end
