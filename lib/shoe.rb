
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    # check to see if BRANDS array contains that element (brand) already. 
    # If it does (condition is true), do not shove it to BRANDS.
    # any? returns true if the BRANDS array contains that brand already.
    # <unless> is a control expression that executes only if value is false 
    # (it's false when the BRANDS array does not contain that element (brand) already.)
    BRANDS << brand unless BRANDS.any? { |brands_element| brands_element == brand }
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
end # end of Show class
