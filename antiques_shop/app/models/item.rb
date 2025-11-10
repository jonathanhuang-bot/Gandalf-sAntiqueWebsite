class Item < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  # Default ordering: sort by position (ascending), then by id for items without position
  default_scope { order(position: :asc, id: :asc) }
end
