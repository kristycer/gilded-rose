require 'gilded_rose'

describe GildedRose do

    describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

    context 'under normal circumstances' do 
        let(:name) { 'test_item'}
        let(:test_item) {GildedRose.new([item])}
        let(:item) { Item.new(name, sell_in, quality) }
        let(:sell_in) { 100 }
        let(:quality) { 100 }

        it 'decreases sell_in by 1 each day' do

            test_item.update_quality
            expect(item.sell_in).to eq sell_in - 1
        end 
    end
end 