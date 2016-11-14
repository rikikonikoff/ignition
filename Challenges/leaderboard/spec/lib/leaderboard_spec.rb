require 'spec_helper'

RSpec.describe Leaderboard do
  let(:leaderboard) {leaderboard = Leaderboard.new(GAME_INFO)}

  describe "#initialize" do
    it "creates a new leaderboard object containing an empty teams array and an array of games" do
      expect(leaderboard).to be_a(Leaderboard)
      expect(leaderboard.games).to eq(GAME_INFO)
      expect(leaderboard.teams).to eq([])
    end
  end

  describe "#populate_teams" do
    it "populates the instance variable @teams with an array of Team objects" do
      leaderboard.populate_teams
      expect(leaderboard.populate_teams).to be_a(Array)
      expect(leaderboard.populate_teams[0]).to be_a(Team)
      expect(leaderboard.populate_teams[0].name).to eq("Patriots")
    end
  end

  describe "#scores" do
    it "fills in all the wins and losses for each Team object" do
      expect(leaderboard.populate_teams[0].wins).to eq(0)
      expect(leaderboard.populate_teams[1].losses).to eq(0)
      leaderboard.scores
      expect(leaderboard.populate_teams[0].wins).to eq(3)
      expect(leaderboard.populate_teams[1].losses).to eq(2)
    end
  end

  describe "#rankings" do
    it "assigns rankings to the Teams according to their wins and losses" do
      expect(leaderboard.populate_teams[0].rank).to eq(nil)
      leaderboard.rankings
      expect(leaderboard.populate_teams[0].rank).to eq(1)
    end
  end

  describe "#display" do
    it "prints out a leaderboard containing the above info" do
      leaderboard.display
      expect(leaderboard.display).to eq("-------------------------------------------------\n| Name\t      Rank  Total Wins   Total Losses\t|\n-------------------------------------------------\n")
    end
  end

end
