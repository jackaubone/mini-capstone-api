# class ImagesController < ApplicationController

#   def index
#     images = Image.all
#     render json: images.as_json
#   end

  
#   def create 
#     image = Image.new(
#       product_id: params["product_id"]
#       url: params["url"]
#       description: params["description"]
#     )

#     if product.save
#       render json: product.as_json
#     else
#       render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
#     end
#   end


#   def update
#     image = Image.find_by(id: params["id"])

#     image.product_id = params["product_id"] || image.product_id
#     image.description = params["description"] || image.product_id
#     image.url = params["url"] || image.url

#     if product.save
#       render json: product.as_json
#     else 
#       render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
#     end
#   end


#   def destroy
#     image = Image.find_by(id: params["id"])
#     image.destroy

#     render json: {message: "destroyed successfully"}
#   end
# end
