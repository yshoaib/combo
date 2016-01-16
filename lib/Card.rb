module Combo
  class Card < Struct.new(:rank, :suit, :value)
    def to_s
      "#{rank} of #{suit}"
    end
  end
end
