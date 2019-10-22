class Bear

attr_reader :name, :type

def initialize(name,type)
  @name = name
  @type = type
  @stomach = []
end

def fish_eaten
  return @stomach.count()
end












end
