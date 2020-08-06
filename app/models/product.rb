class Product < ApplicationRecord
  validate :name
  validate :price
  has_one_attached :image
  has_many :line_items

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line items present')
      throw :abort
    end
  end
end
