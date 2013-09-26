# == Schema Information
#
# Table name: underwritings
#
#  id         :integer          not null, primary key
#  shop_id    :integer
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Underwriting < ActiveRecord::Base
  STATUSES = {
    limited: 0,
    ng:      1,
    ok:      2,
  }.freeze

  belongs_to :shop

  STATUSES.each do |key, value|
    scope key, -> { where(status: value) }
  end
end
