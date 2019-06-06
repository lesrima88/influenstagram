class Post < ApplicationRecord

  extend FriendlyId

  belongs_to :user
  has_many :reviews, dependent: :delete_all
  friendly_id :instagram_username, use: :slugged
  validates_presence_of :instagram_username, :url
  validates :instagram_username, :uniqueness => true
  validates :url, :uniqueness => true

  validates_format_of :url, :with => URI::regexp(%w(http https))
  has_many :taggings, dependent: :delete_all
  has_many :tags, through: :taggings, dependent: :delete_all


def average_review
 if reviews.blank?
   @average_review = 0
 else
   @average_review = reviews.average(:rating).round(2)
 end
end

def self.tagged_with(name)
  Tag.find_by!(name: name).posts
end

def self.tag_counts
  Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
end

def tag_list
  tags.map(&:name).join(', ')
end

def tag_list=(names)
  self.tags = names.split(',').map do |n|
    Tag.where(name: n.strip).first_or_create!
  end
end
end
