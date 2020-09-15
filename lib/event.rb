class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |food_truck|
      food_truck.inventory.keys.include?(item)
    end
  end

  def total_inventory
    #yep, this isn't working.  I've no idea why not. I've worked on it for an hour
    #Everything I can find on google seems to indicate this
    #should work.  It's probably because i'm not initializing correctly.
    #well, whatever, guess I'll learn in the review.
    #oh...at 2:57 i realized inventory is a hash and need a second argument...welp next time.
    total_inventory = {}
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, details|
        if total_inventory[item].nil?
          total_inventory[item][:quantity] = item[1]
          total_inventory[item][:food_truck] = [food_truck]
        else
          total_inventory[item][:quantity] += item[1]
          total_inventory[item][:food_truck] << food_truck
        end
      end
    end
    total_inventory
  end



end
