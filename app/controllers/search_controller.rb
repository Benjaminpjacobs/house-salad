class SearchController < ApplicationController
  def index
    st = params[:state]
    conn = Faraday.new(:url => 'https://api.propublica.org/congress/v1/')
    results = conn.get do |req|
      req.url "members/house/#{st}/current.json"
      req.headers["X-API-Key"] = ENV["api-key"]
    end
    
    @members = JSON.parse(results.body, :symbolize_names => true)[:results]
  end
end