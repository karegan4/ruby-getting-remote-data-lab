# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response.body
class GetRequester
    attr_reader :url

    def initialize(url_string)
        @url = url_string
    end

    def get_response_body
        uri = URI.parse(self.url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        programs = JSON.parse(self.get_response_body)
        programs
    end
end