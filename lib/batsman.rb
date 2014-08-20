class Batsman < Player
  attr_accessor :balls_played, :score, :fours, :sixes, :dots, :twos, :ones, :status

  def initialize(team)
  	@balls_played = 0
  	@score = 0
  	@fours = 0
  	@sixes = 0
  	@dots = 0
  	@twos = 0
  	@ones = 0

    select_batsman(team)
  end

  def out
  	
  end

  def select_batsman(team)
    team.team_players.each do |player|
      if player.status == :not_played
        new_batsman(player)
      end
    end
  end

  def new_batsman(player)
    self.player_name = player.player_name
    self.team_name = player.team_name
    self.dominant_hand = player.dominant_hand
    self.front_foot_skill = player.front_foot_skill
    self.back_foot_skill = player.back_foot_skill
  end

end

# the three statuses are: playing, out, not_played