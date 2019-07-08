module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

print Orange.ancestors
print HotSauce.ancestors

# The list of ancestor clases is also called a lookup chain,
# because ruby will look for a method starting in the first class
# in the chain (in this case HotSauce) and eventually lookup
# BasicObject if the method is found nowhere in the lookup chain