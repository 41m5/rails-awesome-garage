class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
end
