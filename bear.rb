class Bear

attr_reader :name, :type

def initialize(name,type)
  @name = name
  @type = type
  @stomach = []
end

def food_count
  return @stomach.count()
end

def eat_fish(fish)
  @stomach.push(fish)
end

def take_fish_from_river(river)
  for fish in river.river_stock
    eat_fish(fish)
    river.lose_fish(fish)
  end
  end

  def roar
    return "I am #{@name} the #{@type}. Hear me ROAR!!"
  end





end
