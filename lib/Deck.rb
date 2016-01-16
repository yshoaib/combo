module Combo
  class Deck
    attr_reader :cards

    RANKS = %i(
      Ace
      Two
      Three
      Four
      Five
      Six
      Seven
      Eight
      Nine
      Ten
      Jack
      Queen
      King
    )

    SUITS = %i(
      Spades
      Clubs
      Diamonds
      Hearts
    )

    def initialize
      @rank_values = Hash.new
      RANKS.each_with_index do |rank, index|
        if index + 1 <= 10
          @rank_values[rank] = index + 1
        else
          @rank_values[rank] = 10
        end
      end

      @cards = RANKS.flat_map do |rank|
        SUITS.map do |suit|
          Card.new(rank, suit, @rank_values[rank])
        end
      end
    end

    def to_a
      @cards
    end

    def shuffle!
      @cards.shuffle!
    end

    def empty?
      @cards.count == 0
    end

    def remove!
      @cards.pop
    end

    def peak
      @card[@cards.count -1]
    end
  end
end
