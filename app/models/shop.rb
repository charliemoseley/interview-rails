# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Shop < ActiveRecord::Base
  has_many :underwritings
  has_one :key
end
