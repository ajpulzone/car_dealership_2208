require "rspec"
require "./lib/car"
require "./lib/dealership"

RSpec.describe Dealership do

  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
  end

  describe "#initialize" do
    it "exists" do
      expect(@dealership).to be_an_instance_of(Dealership)
    end

    it "inventory starts as an empty array" do
      expect(@dealership.inventory).to eq([])
    end

    it "inventory_count starts at 0" do
      expect(@dealership.inventory_count).to eq(0)
    end
  end

  describe "#add_car" do
    it "adds a car to the inventory array" do
      expect(@dealership.inventory).to eq([])
      @dealership.add_car(@car_1)
      expect(@dealership.inventory).to eq([@car_1])
      @dealership.add_car(@car_2)
      expect(@dealership.inventory).to eq([@car_1, @car_2])
    end

    it "increases inventory_count by 1 with each car added" do
      expect(@dealership.inventory_count).to eq(0)
      @dealership.add_car(@car_1)
      expect(@dealership.inventory_count).to eq(1)
      @dealership.add_car(@car_2)
      expect(@dealership.inventory_count).to eq(2)
    end
  end
end
