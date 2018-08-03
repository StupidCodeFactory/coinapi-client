module CryptoCompare
  class Asset
    include Model
    include Model::MarketData

    attribute :asset_id, :string
    attribute :name, :string
    attribute :type_is_crypto, :integer

  end
end
