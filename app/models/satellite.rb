class Satellite < ApplicationRecord
  belongs_to :planet

  validates :name, presence: true
  validates :discovery_year, presence: true
  validates :artificial, inclusion: { in: [true, false] } # May only be boolean values
end
