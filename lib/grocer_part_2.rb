require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  cart.each do |foods|
    coupon_item = find_item_by_name_in_collection(foods[:item], coupons)
    if coupon_item === true 
      coupons.each do |coupon_hash|
        if coupon_item[:count] >= coupon_hash[:num]
            applied_coupon = {
              item: "#{coupon_item[:item]} W/COUPON",
              price: (coupon_hash[:cost] / coupon_hash[:num]),
              clearance: coupon_item[:clearance],
              count: coupon_hash[:count]
            }
           cart.push(applied_coupon)
          end 
      end
    end 
  end 
  binding.pry 
  return cart 
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
