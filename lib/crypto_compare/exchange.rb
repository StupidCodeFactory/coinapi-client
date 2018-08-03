module CryptoCompare
  class Exchange
    include Model
    include Model::MarketData

    attribute :exchange_id,          :string
    attribute :website,              :string
    attribute :name,                 :string
  end
end
