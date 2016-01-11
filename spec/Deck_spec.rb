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
end
