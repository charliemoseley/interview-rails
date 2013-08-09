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
