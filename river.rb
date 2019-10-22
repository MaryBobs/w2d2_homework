class River

attr_reader :name

def initialize(name)
  @name = name
  @river_stock = []
end

def count_fish()
  @river_stock.count
end

def add_fish(fish)
  return @river_stock.push(fish)
end













end
