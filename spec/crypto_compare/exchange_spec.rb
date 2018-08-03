require "spec_helper"
require 'crypto_compare/exchange'

module CryptoCompare
  RSpec.describe Exchange do
    describe '.all' do
      it "returns the list of available exanges" do
        expect(described_class.all).to all(be_instance_of(described_class))
      end
    end
  end
end
