# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  uuid                   :string
#  gender                 :string
#  name                   :string
#

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
