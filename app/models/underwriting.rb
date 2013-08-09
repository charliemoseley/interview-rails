class Underwriting < ActiveRecord::Base
  STATUSES = {
    limited: 0,
    ng:      1,
    ok:      2,
  }.freeze

  belongs_to :shop
end
