

class Team
  attr_reader :name
  attr_accessor :rank, :wins, :losses

  def initialize(name)
    @name = name
    @rank = nil
    @wins = 0
    @losses = 0
  end

  def rank
    @rank
  end

  def wins
    @wins
  end

  def losses
    @losses
  end

end
