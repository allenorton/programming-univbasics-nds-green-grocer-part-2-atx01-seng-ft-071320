require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  cart.each do |foods|
    coupon_item = find_item_by_name_in_collection(foods[:item], coupons)
    coupons.each do |coupon_hash|
      if coupon_item == true
        if coupon_items[:count] >= coupon_hash[:num]
          applied_coupon = {
            item: "#{coupon_items[:item]} W/COUPON",
            price: (coupon_hash[:price] / coupon_hash[:num]),
            clearance: coupon_items[:clearance],
            count: coupon_hash[:count]
          }
          coupon_cart.push(applied_coupon)
        end 
      end 
    end
  end 
  return cart 
  binding.pry 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
