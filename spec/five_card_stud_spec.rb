require File.join(File.dirname(__FILE__), '..',File.basename(__FILE__.gsub('_spec','')))
require File.join(File.dirname(__FILE__), '..',File.basename('deck.rb'))

describe FiveCardStud do
  let(:obj){ described_class.new }

  describe "Constants" do
    describe "CARDS_PER_HAND" do
      it "should be an Integer" do
        expect(FiveCardStud::CARDS_PER_HAND).to be_a(Integer)
      end

      it "should equal five" do
        expect(FiveCardStud::CARDS_PER_HAND).to eq(5)
      end
    end
  end #Constants

  describe "Attributes" do

    it ":hands should exist" do
      expect(obj).to have_attributes(hands: nil)
    end
  end #Attributes

  describe "Methods" do
    describe ':: Class' do
      describe '::rank([[...], [...], ...])' do
        let(:hands) do
          [
            ['queen of hearts', 'king of spades', '3 of diamonds', '6 of clubs', 'jack of clubs'],
            ['2 of spades','2 of clubs', 'jack of diamonds', '7 of hearts', '9 of spades']
          ]
        end

        let(:ranking){ described_class.rank(hands) }

        it 'should return an Array of Arrays of hands' do
          expect(ranking).to be_an(Array)
          expect(ranking.first).to be_an(Array)
        end
        it 'should order the hands from highest to lowest'
      end
    end #Instance
  end #Methods
=begin
  def hands(number: 2)
    these_hands = []
    deck = Deck.shuffle
    number.times do
      these_hands << deck.pop(described_class::CARDS_PER_HAND)
    end
    these_hands
  end
=end
end