
class Player
  def play_turn(warrior)
    @health = warrior.health unless @health
    @danger_health = 9
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.health < 15 and @health <= warrior.health
      warrior.rest!
    elsif warrior.feel.captive? 
      warrior.rescue!  
    elsif warrior.health < @danger_health
      warrior.walk!(:backward)  
    else
      warrior.walk! 
    end
    @health = warrior.health
  end
end