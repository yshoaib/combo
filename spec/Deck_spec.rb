require 'spec_helper'

describe Combo::Deck do
  let(:deck) { Combo::Deck.new }
  # Refer: https://gist.github.com/thatrubylove/bdf455a949436ca8e6a0
  it "has to_a method" do
    expect(subject).to respond_to(:to_a)
  end

  it "has 52 cards" do
    expect(deck.to_a.count).to eq(52)
  end

  it "should contain King of Hearts" do
    expect(deck.to_a).to include(Combo::Card.new(:King, :Hearts, 10))
  end

  it "should contain Ace of Spades" do
    expect(deck.to_a).to include(Combo::Card.new(:Ace, :Spades, 1))
  end

  it "should contain Jack of Diamonds" do
    expect(deck.to_a).to include(Combo::Card.new(:Jack, :Diamonds, 10))
  end

  it "should contain Nine of Clubs" do
    expect(deck.to_a).to include(Combo::Card.new(:Nine, :Clubs, 9))
  end

  it "should contain Ten of Diamonds" do
    expect(deck.to_a).to include(Combo::Card.new(:Ten, :Diamonds, 10))
  end
end
