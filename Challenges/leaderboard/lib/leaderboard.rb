require_relative 'team'

GAME_INFO = [
  {
    home_team: "Patriots",
    away_team: "Broncos",
    home_score: 17,
    away_score: 13
  },
  {
    home_team: "Broncos",
    away_team: "Colts",
    home_score: 24,
    away_score: 7
  },
  {
    home_team: "Patriots",
    away_team: "Colts",
    home_score: 21,
    away_score: 17
  },
  {
    home_team: "Broncos",
    away_team: "Steelers",
    home_score: 11,
    away_score: 27
  },
  {
    home_team: "Steelers",
    away_team: "Patriots",
    home_score: 24,
    away_score: 31
  }
]

class Leaderboard
  attr_accessor :games, :teams

  def initialize(games)
    @games = games
    @teams = []
  end

  def populate_teams
    team_array = []

    @games.each do |game|
      if team_array.include?(game[:home_team]) == false
        team_array << game[:home_team]
      end

      if team_array.include?(game[:away_team]) == false
        team_array << game[:away_team]
      end
    end

    team_array.each do |team_name|
      @teams << Team.new(team_name)
    end

    @teams
  end

  def scores
    @teams.each do |team|
      team.wins = 0
      team.losses = 0
      @games.each do |game|
        if team.name == game[:home_team] && game[:home_score] > game[:away_score]
          team.wins += 1
        end
        if team.name == game[:away_team] && game[:away_score] > game[:home_score]
          team.wins += 1
        end
        if team.name == game[:home_team] && game[:away_score] > game[:home_score]
          team.losses += 1
        end
        if team.name == game[:away_team] && game[:home_score] > game[:away_score]
          team.losses += 1
        end
      end
    end
  end

  def rankings
    @teams.sort_by! {|team| [-team.wins, team.losses]}
    @teams.each_with_index do |team, index|
      team.rank = index + 1
    end
  end


  def display
    @display = "-------------------------------------------------\n"
    @display += "| Name\t      Rank  Total Wins   Total Losses\t|\n"
    @teams.each do |team|
      @display += "| #{team.name}    \t#{team.rank}\t#{team.wins}\t\t#{team.losses}\t|\n"
    end
    @display += "-------------------------------------------------\n"

    @display
  end

end

leaderboard = Leaderboard.new(GAME_INFO)
leaderboard.populate_teams
leaderboard.scores
leaderboard.rankings
puts leaderboard.display
