# die.rb
class Die
  attr_reader :showing

  def initialize
    @showing = rand(1..6)
  end

end
