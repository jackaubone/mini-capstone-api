class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true  
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :description, length: {minimum: 10, maximum: 500}
  validates :inventory, presence:true
  

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
      return price.to_f * 0.09
  end

  def total
    return tax + price
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

end
