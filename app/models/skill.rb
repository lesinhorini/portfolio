class Skill < ApplicationRecord
    include Placeholder

    validates_presence_of :title, :percent_used

    after_initialize :set_defaults

    def set_defaults
        self.badge ||= Placeholder.image_generator(width: '250', height: '250')
    end
end
