module CoinAPIClient
  module Model
    extend ActiveSupport::Concern

    included do
      include ActiveModel::Model
      include ActiveModel::Attributes
      include ActiveModel::Serializers::JSON
    end

    module MarketData
      def self.included(klass)
        klass.attribute :data_start,           :date
        klass.attribute :data_end,             :date
        klass.attribute :data_quote_start,     :time
        klass.attribute :data_quote_end,       :time
        klass.attribute :data_orderbook_start, :time
        klass.attribute :data_orderbook_end,   :time
        klass.attribute :data_trade_start,     :time
        klass.attribute :data_trade_end,       :time
        klass.attribute :data_trade_count,     :integer
        klass.attribute :data_symbols_count,   :integer
      end
    end
  end
end
