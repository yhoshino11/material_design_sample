class Hobby < ActiveRecord::Base
  validates :url, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
