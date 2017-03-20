require File.join(File.dirname(__FILE__), '..',File.basename(__FILE__.gsub('_spec','')))

describe FiveCardStud do
  let(:obj){ described_class.new }

  describe "Constants" do
    describe "CARDS_PER_HAND" do
      it "should be an Integer" do
        expect(FiveCardStud::CARDS_PER_HAND).to be_a(Fixnum)
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
    describe '# Instance' do
      describe '#rank' do
        context 'before play' do
          it 'should return nil' do
            expect(obj.rank).to be_nil
          end
        end

        context 'after play' do
          before do
            obj.play
          end
          it 'should return an Array of hands'
        end

      end
    end #Instance
  end #Methods
end