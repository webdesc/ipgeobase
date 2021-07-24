# frozen_string_literal: true

require_relative "ipgeobase/version"
require "addressable/uri"
require 'net/http'
require 'happymapper'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    response = Net::HTTP.get(uri)
    HappyMapper.parse(response)
  end
end
