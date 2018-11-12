# == Schema Information
#
# Table name: statuses
#
#  id          :integer          not null, primary key
#  value       :string
#  user_id     :string
#  hospital_id :string
#  image_id    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Status < ApplicationRecord
  belongs_to :user
  belongs_to :hospital
end
