class Player
  
  def play_turn(warrior)
    @health = warrior.health unless @health
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.health < 15 and @health <= warrior.health
      warrior.rest!
    else
      warrior.walk!
    end
    @health = warrior.health
  end
end