require 'faraday'
require 'typhoeus'
require 'typhoeus/adapters/faraday'

module CryptoCompare
  class Client

    APIError       = Class.new(StandardError)
    COINBASE_API   = 'https://rest.coinapi.io/'
    API_KEY_HEADER = 'X-CoinAPI-Key'

    EXCHANGES_URL  = '/v1/exchanges'
    ASSETS_URL     = '/v1/assets'
    SYMBOLS_URL    = '/v1/symbols'

    def exchanges
      fetch_exchanges.map { |exchange| Exchange.new(exchange) }
    end

    def assets
      fetch_assets.map { |asset| Asset.new(asset) }
    end

    def symbols
      fetch_symbols.map { |symbol| Symbol.new(symbol) }
    end

    def connection
      @connection ||= begin
                        Faraday.new(url: COINBASE_API) do |faraday|
                          faraday.adapter :typhoeus
                        end
                      end

    end

    private

    def fetch_exchanges
      get_response(EXCHANGES_URL)
    end

    def fetch_assets
      get_response(ASSETS_URL)
    end

    def fetch_symbols
      get_response(SYMBOLS_URL)
    end

    def get_response(url)
      response = connection.get do |req|
        req.url url
        req.headers[API_KEY_HEADER] = ENV.fetch('COINAPI_KEY')
      end

      if response.success?
        JSON.parse(response.body)
      else
        raise APIError
      end

    end
  end
end
