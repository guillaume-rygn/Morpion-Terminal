require_relative '../lib/views/show.rb'

describe "compare condition of victory" do
    it "compare condition victory to the array" do
      expect(Show.new.win_H1("   ")).to eq(true)
    end
    it "compare condition victory to the array" do
      expect(Show.new.win_H1("XXX")).to eq(false)
    end
end

describe "compare condition of victory" do
    it "show first variable of instance" do
      expect(Show.new.A1).to eq(" ")
    end
    it "show first variable of instance" do
      expect(Show.new.C2).to eq(" ")
    end
end