class Product < ApplicationRecord
  validate :name
  validate :price
  has_one_attached :image
end
