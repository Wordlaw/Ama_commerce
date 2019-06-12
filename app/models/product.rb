class Product < ApplicationRecord
  belongs_to :category, required: false
  belongs_to :seller, required: false
end
