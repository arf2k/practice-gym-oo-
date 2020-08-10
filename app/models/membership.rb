class Membership
    attr_accessor :name, :gym, :lifter
    @@all = []

    def initialize(name, gym, lifter)
        @name = name
        @gym = gym
        @lifter = lifter
        @@all << self
    end

    def self.all
        @@all
    end

end
