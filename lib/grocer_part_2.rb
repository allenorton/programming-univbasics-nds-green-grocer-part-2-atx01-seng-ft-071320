require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  cart.each do |foods|
    coupon_item = find_item_by_name_in_collection(foods[:item], coupons)
    if coupon_item   
      coupons.each do |coupon_hash|
        if foods[:item] == coupon_hash[:item] && foods[:count] >= coupon_hash[:num]
          applied_coupon = {
            item: "#{foods[:item]} W/COUPON",
            price: (coupon_hash[:cost] / coupon_hash[:num]),
            clearance: foods[:clearance],
            count: coupon_hash[:num]
          }
           cart.push(applied_coupon)
           foods[:count] -= coupon_hash[:num]
          end 
      end
    end 
  end 
  #binding.pry 
  return cart 
end

def apply_clearance(cart)
  cart.map do |items|
    if items[:clearance]
      items[:price] = (items[:price] * 0.8).round(2)
    end 
  end 
  items 
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
