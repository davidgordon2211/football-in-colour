class Product < ApplicationRecord
  validate :name
  validate :price
  validate :image
end
