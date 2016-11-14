require 'spec_helper'

RSpec.describe Leaderboard do
  let(:leaderboard) {leaderboard = Leaderboard.new(GAME_INFO)}

  describe "#initialize" do
    it "creates a new leaderboard object containing an empty teams array and an array of games" do
      expect(@teams).to eq(nil)
      expect(@games).to eq(GAME_INFO)
    end
  end

  describe "#teams" do
    it "populates the instance variable @teams with an array of Team objects" do
      expect(leaderboard.teams).to be_a(Array)
      expect(leaderboard.teams[0]).to be_a(Team)
      expect(leaderboard.teams[0].name).to eq("Patriots")
    end
  end

  describe "#scores" do
    it "fills in all the wins and losses for each Team object" do
      expect(leaderboard.teams[0].wins).to eq(0)
      expect(leaderboard.teams[1].losses).to eq(0)
      leaderboard.scores
      expect(leaderboard.teams[0].wins).to eq(3)
      expect(leaderboard.teams[1].losses).to eq(2)
    end
  end

  describe "#rankings" do
    it "assigns rankings to the Teams according to their wins and losses" do
      expect(leaderboard.teams[0].rank).to eq(nil)
      leaderboard.rankings
      expect(leaderboard.teams[0].rank).to eq(1)
    end
  end

  describe "#display" do
    it "prints out a leaderboard containing the above info" do
      leaderboard.display
      expect(leaderboard.display).to eq("-------------------------------------------------\n| Name\t      Rank  Total Wins   Total Losses\t|\n-------------------------------------------------\n")
    end
  end

end
