class Article < ApplicationRecord
  validates :title, :author, :presence => true
  validates :title, :length => { :minimum => 5 }
  has_many :comments
end
