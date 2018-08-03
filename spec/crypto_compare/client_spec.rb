require "spec_helper"


RSpec.describe CryptoCompare::Client do
  describe '#exchanges' do
    it 'returns a list of exchanges', vcr: { cassette_name: :exchanges } do
      expect(subject.exchanges).to all(be_instance_of(CryptoCompare::Exchange))
    end
  end

  describe '#assets' do

    it 'returns a list of assets', vcr: { cassette_name: :assets } do
      expect(subject.assets).to all(be_instance_of(CryptoCompare::Asset))
    end
  end

  describe '#symbols' do

    it 'returns a list of symbols', vcr: { cassette_name: :symbols } do
      expect(subject.symbols).to all(be_instance_of(CryptoCompare::Symbol))
    end
  end

end
