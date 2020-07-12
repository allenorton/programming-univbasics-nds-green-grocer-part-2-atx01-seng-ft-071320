require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupon_cart = []
  coupons.each do |coupon_hash|
    coupon_items = find_item_by_name_in_collection(coupon_hash[:item], cart)
    if coupon_items == true
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
  coupon_cart 
  #binding.pry 
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
