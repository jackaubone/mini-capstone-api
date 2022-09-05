class Product < ApplicationRecord

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
end
