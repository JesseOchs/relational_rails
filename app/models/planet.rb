class Planet < ApplicationRecord
  validates :name, presence: true
  validates :relative_position, presence: true
  validates :dwarf, inclusion: { in: [true, false] } # May only be boolean values
end
