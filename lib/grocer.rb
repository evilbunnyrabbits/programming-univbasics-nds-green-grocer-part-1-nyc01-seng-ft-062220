require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.map do |element|
    element.map do |key, value|
      if name == value
        return element
      end
      end
    end

  return nil
end


def consolidate_cart(cart)
  output = []

  cart.each do |element|
    if output.include?(element)
      element[:count] += 1
    else
      element[:count] = 1
      output.push(element)
    end

  end
  output
end


  