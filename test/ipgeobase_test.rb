# frozen_string_literal: true

require_relative "test_helper"
require "webmock/minitest"

class IpgeobaseTest < Minitest::Test
  def setup
    @ip = "83.169.216.199"
  end

  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_lookup_metadata_by_ip
    stub_request(:get, "http://ip-api.com/xml/#{@ip}")
      .to_return(body: File.new("./test/mock-data.xml"), status: 200)
    data = Ipgeobase.lookup(@ip)
    assert_equal data.city, "Yekaterinburg"
    assert_equal data.country, "Russia"
    assert_equal data.country_code, "RU"
    assert_equal data.lat, "56.8333"
    assert_equal data.lon, "60.6"
  end
end
