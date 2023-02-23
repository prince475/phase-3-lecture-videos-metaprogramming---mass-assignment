require 'pry'

class Animal
  attr_accessor :name, :age, :species

  @@all = []

  #simplifying the normal arguments with a hash to avoid defining values when crewting a new object.
  def initialize(args)
    # @name = args[:name]
    # @age = args[:age]
    # @species = args[:species]
    # performing a mass assignment

    args.each_key do |key, value|
      self.send("#{key}=", args[key])
    end
    @@all << self
  end

  def self.all
    @@all
  end
end

cat = {
  name: 'Rose',
  age: 10,
  species: 'F.catus'
}
# passing a hash to our instance ensures that the attributes are initialised.
animal = Animal.new(cat)

binding.pry
