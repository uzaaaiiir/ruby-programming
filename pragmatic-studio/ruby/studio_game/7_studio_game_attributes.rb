class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def boost
    @health += 15
  end

  def drain 
    @health -= 10
  end

  def score 
    @health + @name.length
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def say_hello
    "Hello, I'm #{@name} with a health of #{@health}."
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player_1 = Player.new("finn", 60)
puts player_1.say_hello
puts player_1
player_1.boost
puts player_1

player_2 = Player.new("lucy", 90)
puts player_2
player_2.drain
puts player_2

player_3 = Player.new("jase")
puts player_3
player_3.boost
player_3.boost
puts player_3

player_4 = Player.new("alex", 125)
puts player_4
player_4.drain
player_4.boost
puts player_4

player_5 = Player.new("alex", 125)
puts player_5.name
player_5.name = "alexander"
puts player_5.name
puts player_5.health
puts player_5.score
puts player_5
