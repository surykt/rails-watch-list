class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  has_one_attached :cover

  validates :name, presence: true, uniqueness: true
end
