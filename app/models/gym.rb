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

def membership
    Membership.all.select do |membership|
        membership.gym == self
    end
end

def lifter
    membership.map do |membership|
        membership.lifter
    end
end

def self.gyms 
    Gym.all.map do |gym|
        gym.name
        end
    end

end