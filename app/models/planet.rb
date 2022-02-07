class Planet < ApplicationRecord
  has_many :satellites, :dependent => :destroy

  validates :name, presence: true
  validates :relative_position, presence: true
  validates :dwarf, inclusion: { in: [true, false] } # May only be boolean values

  def self.desc_order
    order(created_at: :desc)
  end

  def child_count
    Satellite.where(planet_id: self.id).count
  end
end
