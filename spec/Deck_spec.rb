require 'spec_helper'

describe Combo::Deck do
  let(:deck) { Combo::Deck.new }
  # Refer: https://gist.github.com/thatrubylove/bdf455a949436ca8e6a0
  it "has to_a method" do
    expect(subject).to respond_to(:to_a)
  end

  it "has cards accessor" do
    expect(subject).to respond_to(:cards)
  end

  it "has shuffle! method" do
    expect(subject).to respond_to(:shuffle!)
  end

  it "has 52 cards" do
    expect(deck.cards.count).to eq(52)
  end

  it "should contain King of Hearts" do
    expect(deck.cards).to include(Combo::Card.new(:King, :Hearts, 10))
  end

  it "should contain Ace of Spades" do
    expect(deck.cards).to include(Combo::Card.new(:Ace, :Spades, 1))
  end

  it "should contain Jack of Diamonds" do
    expect(deck.cards).to include(Combo::Card.new(:Jack, :Diamonds, 10))
  end

  it "should contain Nine of Clubs" do
    expect(deck.cards).to include(Combo::Card.new(:Nine, :Clubs, 9))
  end

  it "should contain Ten of Diamonds" do
    expect(deck.cards).to include(Combo::Card.new(:Ten, :Diamonds, 10))
  end

  it "should shuffle cards" do
    deck = Combo::Deck.new
    shuffled_cards = Combo::Deck.new.shuffle!
    allow(deck).to receive(:shuffle!) { shuffled_cards }
    deck.shuffle!
  end

  it "should remove card" do
    deck = Combo::Deck.new
    deck.remove!
    expect(deck.cards.count).to eq (51)
  end
end
