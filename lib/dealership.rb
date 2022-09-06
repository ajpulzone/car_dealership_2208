class Dealership
  attr_reader :inventory, :inventory_count, :add_car

  def initialize(inventory, inventory_count)
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    if @inventory_count == 0
      false
    else
      true
    end
  end

  # def cars_by_make
  # end
  #This method will be problematic due to issues with make

  def total_value
    @inventory.

  end
end
