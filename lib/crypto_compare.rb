require "crypto_compare/version"
require 'active_model'
require 'crypto_compare/model'
require 'crypto_compare/exchange'
require 'crypto_compare/asset'
require 'crypto_compare/symbol'
require 'crypto_compare/client'


module CryptoCompare

  def self.api
    @api ||= begin
               Net::HTTP.new()
             end

  end
end
