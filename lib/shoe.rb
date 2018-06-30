class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << @brand
    remove
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def remove
    if BRANDS.any? {|x| x = self}
      BRANDS.delete(self)
    end
  end
end
