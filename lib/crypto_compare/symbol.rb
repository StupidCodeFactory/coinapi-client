module CryptoCompare
  class Symbol
    include Model
    include Model::MarketData

    attribute :symbol_id, :string
    attribute :exchange_id, :string
    attribute :symbol_type, :string
    attribute :asset_id_base, :string
    attribute :asset_id_quote, :string
    attribute :future_delivery_time, :time
    attribute :option_type_is_call, :boolean
    attribute :option_strike_price, :float
    attribute :option_contract_unit, :float
    attribute :option_exercise_style, :string
    attribute :option_expiration_time, :time
  end
end
