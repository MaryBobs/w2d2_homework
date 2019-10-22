class River

attr_reader :name, :river_stock

def initialize(name)
  @name = name
  @river_stock = []
end

def fish_count()
  @river_stock.count
end

def add_fish(fish)
  return @river_stock.push(fish)
end

def lose_fish(fish)
  @river_stock.delete(fish)
end

end
