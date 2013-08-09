class Shop < ActiveRecord::Base
  has_many :underwritings
  has_one :key
end
