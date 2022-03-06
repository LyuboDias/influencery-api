class Influencer < ApplicationRecord
  belongs_to :platform
  belongs_to :tag, foreign_key: "primary_tag_id"
  has_many :influencer_tags
  has_many :tags, :through => :influencer_tags 
  validates :handle, :primary_tag_id, presence: true
  validates_associated :influencer_tags
  validates :followers, numericality: { only_integer: true }
end
