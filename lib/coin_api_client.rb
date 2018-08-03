require "coin_api_client/version"
require 'active_model'
require 'coin_api_client/model'
require 'coin_api_client/exchange'
require 'coin_api_client/asset'
require 'coin_api_client/symbol'
require 'coin_api_client/client'


module CoinAPIClient

  def self.api
    @api ||= begin
               Net::HTTP.new()
             end

  end
end
