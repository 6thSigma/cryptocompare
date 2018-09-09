require 'faraday'
require 'json'

module Cryptocompare
  module CoinSnapshotFullById
    API_URL = 'https://www.cryptocompare.com/api/data/coinsnapshotfullbyid/'

    def self.find(id)
      params = {
        'id' => id
      }

      full_path = QueryParamHelper.set_query_params(API_URL, params)
      api_resp = Faraday.get(full_path)
      JSON.parse(api_resp.body)
    end
  end
end
