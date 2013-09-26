# == Schema Information
#
# Table name: keys
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  identifier :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Key < ActiveRecord::Base
  belongs_to :shop
end
