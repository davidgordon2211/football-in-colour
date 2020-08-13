class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  delegate :name,  to: :product
  delegate :price, to: :product
  delegate :image, to: :product

  def total_price
    product.price.to_i * quantity.to_i
  end
end
