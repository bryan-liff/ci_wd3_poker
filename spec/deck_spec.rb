require 'pry'
#this_dir = File.dirname(__FILE__)
#file_name = File.basename(__FILE__.gsub('_spec',''))
#file_to_include = File.join(this_dir, '..',file_name)
#require file_to_include
require File.join(File.dirname(__FILE__), '..',File.basename(__FILE__.gsub('_spec','')))

describe Deck do
  describe "Constants" do
    describe "SUITS" do
      it "should be an Array" do
        expect(Deck::SUITS).to be_an Array
      end
    end

    describe "VALUES" do
      it "should be an Array" do
        expect(described_class::VALUES).to be_an Array
      end
    end
  end

  describe "Methods" do
    describe ":: Class" do
      describe "::shuffle" do
        it "returns an Array with 52 members" do
          expect(described_class.shuffle).to be_an(Array)
          expect(described_class.shuffle.count).to eq(52)
        end
      end
    end

    describe "# Instance" do

    end
  end
end