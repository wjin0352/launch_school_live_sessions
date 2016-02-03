require 'pry'

class String
  def numeric?
    Float(self) != nil rescue false
  end
end

class Atbash
  SEARCH_HASH = { a: 'z', b: 'y', c: 'x', d: 'w', e: 'v', f: 'u', g: 't', h: 's', i: 'r', j: 'q', k: 'p', l: 'o', m: 'n', n: 'm', o: 'l', p: 'k', q: 'j', r: 'i', s: 'h', t: 'g', u: 'f', v: 'e', w: 'd', x: 'c', y: 'b', z: 'a' }

  def self.encode(text)
    letters = []
    text.downcase.gsub(/[\s,.]/, "").split(//).each do |n|
      letters << n if n != ' '
    end

    letters.map { |character| character.numeric? ? character : SEARCH_HASH[character.to_sym] }.join.scan(/.{1,5}/).join(' ')
  end
end

  # result = []
  # letters.each do |character|
  #   character.numeric? ? result << character : result << SEARCH_HASH.fetch(character.to_sym)
  # end

class SecretFile
  attr_reader :data

  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry

  end
end


module Movable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end


class WheeledVehicle
  include Movable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initalize
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initalize
    super([20,20], 80, 8.0)
  end
end

class Seacraft
  include Movable

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def range
    range_by_using_fuel = super
    return range_by_using_fuel + 10
  end
end


class Catamaran < Seacraft
  def initalize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super
  end
end

class Motorboat < Seacraft
  def initalize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end
















