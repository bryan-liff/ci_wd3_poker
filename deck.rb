class Deck
  SUITS = %w(diamonds hearts clubs spades)

  VALUES = (2..10).to_a.collect{|m| m.to_s} + %w(jack queen king ace)

  def self.shuffle
    Deck::VALUES.product(Deck::SUITS).collect{|m| m[0] + ' of ' + m[1]}.shuffle
  end
end
