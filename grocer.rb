def consolidate_cart(cart)
  # code here
  # .each_with_object iterates the given block for each element with an
  # arbitrary object given, and returns the initially given object.
  cart.each_with_object({}) do |item, hash|
    # over each element/object pair, iterate over the food type/attribute pair
    item.each do |type, attributes|
      # if type already exists
      if hash[type]
        # increment count by 1
        attributes[:count] += 1
      else
        # because type doesn't already exist, create a count attribute equal to 1 item
        attributes[:count] = 1
        # and update attributes
        hash[type] = attributes
      end
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
  # iterate over each coupon
  coupons.each do |coupon|
    # set the coupon's :item attribute equal to "item" and :num to num
    item = coupon[:item]
    num = coupon[:num]
    # if the cart has an item in w/ a coupon and the required num
    # for coupon is great than or equal to count in cart,
    if cart[item] && cart[item][:count] >= num
      # if there is already a coupon applied
      if cart["#{item} W/COUPON"]
        # increment the coupon count
        cart["#{item} W/COUPON"][:count] += 1
      # if there is no coupon applied
      else
        # apply the first coupon by count = 1 and
        # setting price to coupon price
        cart["#{item} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{item} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      # reduce the number of items in the cart by
      # the number of items needed for the coupon
      cart[item][:count] -= coupon[:num]
    end
  end
  #return the cart
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
