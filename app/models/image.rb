class Image < ApplicationRecord
  belongs_to :products
  
  # def products
  #   Product.find_by(id: product_id)
  # end
end
