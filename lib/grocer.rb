require 'pry'


cart = [
 {:item => "AVOCADO", :price => 3.00, :clearance => true},
 {:item => "AVOCADO", :price => 3.00, :clearance => true},
 {:item => "BLACK_BEANS", :price => 2.50, :clearance => false}
]

def find_item_by_name_in_collection(name, collection)
 collection.each do |ele|
    ele.each do |k, v|
      return ele if v == name
    end
  end
  nil
end

def consolidate_cart(cart)
  count = Hash.new(0)
  cart.each {|ele| count[ele] += 1}
  count.each do |k, v|
    k[:count] = v
  end
  count.keys
end

# binding.pry
  