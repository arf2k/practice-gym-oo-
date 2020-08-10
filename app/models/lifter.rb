class Lifter
attr_accessor :name, :lift_total
@@all =[]

def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
end

end