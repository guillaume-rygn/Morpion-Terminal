require_relative '../lib/app/player.rb'

describe "the method initialize new player" do
    it "create new player call bastien" do
      expect(Player.new("bastien", "X").name).to eq("bastien")
    end
    it "create new player call bastien with X sign" do
      expect(Player.new("bastien", "X").sign).to eq("X")
    end
    it "create new player call guillaume" do
      expect(Player.new("guillaume", "O").name).to eq("guillaume")
    end
    it "create new player call guillaume with O sign" do
      expect(Player.new("guillaume", "O").sign).to eq("O")
    end
end