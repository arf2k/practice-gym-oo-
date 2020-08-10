require "pry"
require_relative "./app/models/gym.rb"
require_relative "./app/models/lifter.rb"
require_relative "./app/models/membership.rb"


biff = Lifter.new("Biff", 420)
brad = Lifter.new("Brad", 690)
derek = Lifter.new("Derek", 120)
lily = Lifter.new("Lily", 500)

golds = Gym.new("Gold's Gym", 59)
laser = Gym.new("Laser max", 63)
cloud = Gym.new("Puffy cloud bar", 30)
tunnel = Gym.new("Tunnel In", 45)

m1 = Membership.new("Pop", golds, biff)
m2 = Membership.new("Squirt", laser, brad)
m3 = Membership.new("Eek", tunnel, lily)
m4 = Membership.new("Splat", cloud, biff)
m5 = Membership.new("Doink", golds, lily)

binding.pry
alksdjfldks