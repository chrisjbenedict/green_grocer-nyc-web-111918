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

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
