class MountainRange < ApplicationRecord
    has_many :mountains, dependent: :destroy
end