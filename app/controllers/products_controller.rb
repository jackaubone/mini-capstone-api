class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: products.as_json
  end
  def banana
    banan = Product.find_by(id: 1)
    render json: banan.as_json
  end

end
