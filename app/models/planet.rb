class Planet < ApplicationRecord
  has_many :satellites, :dependent => :destroy

  validates :name, presence: true
  validates :relative_position, presence: true
  validates :dwarf, inclusion: { in: [true, false] } # May only be boolean values
end
