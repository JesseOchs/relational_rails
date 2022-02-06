class MountainRange < ApplicationRecord
    has_many :mountains, dependent: :destroy

    def count_mountains
        self.mountains.count
    end
end