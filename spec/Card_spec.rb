require 'spec_helper'

describe Combo::Card do
  # Refer: https://gist.github.com/thatrubylove/bdf455a949436ca8e6a0
  it "has a rank" do
    expect(subject).to respond_to(:rank)
  end

  it "has a value" do
    expect(subject).to respond_to(:value)
  end

  it "has a suit" do
    expect(subject).to respond_to(:suit)
  end
end
