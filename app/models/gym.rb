class Gym
attr_accessor :name, :cost
@@all = []

def initialize(name, cost)
    @name = name
    @cost = cost
    @@all << self
end

def self.all
    @@all
end


end