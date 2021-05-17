class Player
  def play_turn(warrior)
    if warrior.feel(warrior.direction_of_stairs).enemy?
      warrior.attack!(warrior.direction_of_stairs)
    elsif warrior.health < 15
      warrior.rest!
    else
     warrior.walk!(warrior.direction_of_stairs)
   end
  end
end
  