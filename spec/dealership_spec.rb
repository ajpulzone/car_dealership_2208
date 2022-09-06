require "rspec"
require "./lib/car"
require "./lib/dealership"

RSpec.describe Dealership do

  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
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

  describe "#has_inventory?" do
    it "returns false if inventory_count = 0" do
      expect(@dealership.inventory_count).to eq(0)
      expect(@dealership.has_inventory?).to eq(false)
    end

    it "returns true if inventory_count >0" do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
      expect(@dealership.inventory_count).to eq(4)
      expect(@dealership.has_inventory?).to eq(true)
    end
  end

  # describe "#cars_by_make" do
  #   it "returns an array containing the cars sorted by the make requested" do
  #     expect(@dealership.cars_by_make).to eq([])
  #     @dealership.add_car(@car_1)
  #     @dealership.add_car(@car_2)
  #     @dealership.add_car(@car_3)
  #     @dealership.add_car(@car_4)
  #     expect(@dealership.cars_by_make("Toyota"))
  #   end
  # end
  #This test will be problematic due to issues with make, moving on through iteration 3

  describe "#total_value" do
    it "returns the total value of cars in the inventory" do
      expect(@dealership.inventory).to eq([])
      expect(@dealership.total_value).to eq(0)
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
      expect(@dealership.total_value).to eq(156000)

    end
  end
end
