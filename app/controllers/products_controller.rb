class ProductsController < ApplicationController
  def index
    @products = Product.all
    p current_user
    render template: "products/index"
  end


  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end
  

  def create
    product = Product.new(
     name: params["name"],
     price: params["price"],
     description: params["description"],
     inventory: params["inventory"],
     user_id: current_user.id
    )

    if product.save
      Image.create(url: params["image_url"], description: params["image_description"], product_id: product.id)
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def update
    product = Product.find_by(id: params["id"])

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    product.inventory = params["inventory"] || product.inventory

    if product.save
      render json: product.as_json
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy

    render json: {message: "destroyed successfully"}
  end
end
