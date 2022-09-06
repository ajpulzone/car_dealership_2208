class Dealership
  attr_reader :inventory, :inventory_count

  def initialize(inventory, inventory_count)
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
  end

end
