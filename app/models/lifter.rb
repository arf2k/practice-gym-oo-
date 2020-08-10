class Lifter
    attr_accessor :name, :lift_total
    @@all =[]

    def initialize(name, lift_total)
        @name = name
        @lift_total = lift_total
        @@all << self
    end

    def self.all
        @@all
    end

    def membership
        Membership.all.select do |membership|
            membership.lifter == self
        end
    end

    def gym
        membership.map do |membership|
            membership.gym
        end
    end

    def self.average_lift
       lifts = Lifter.all.map{|lifter| lifter.lift_total}
       lifts.sum / lifts.length
    end

    def add_membership(gym, cost)
        Membership.new(gym, self, cost)
    end


end