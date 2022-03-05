class Tag < ApplicationRecord
    has_many :influencer_tags
    validates :name, length: { minimum: 1 }
end
