class PropublicaService 
  def initialize(state)
    @state = state
    @conn = Faraday.new :url => 'https://api.propublica.org/congress/v1/', :headers => {"X-API-Key" => ENV["api-key"]}
  end

  def self.search(state)
    new(state).search
  end

  def search
    result = conn.get{ |req| req.url "members/house/#{@state}/current.json" }
    JSON.parse(result.body, symbolize_names: true)
  end

  private
    attr_reader :state, :conn
end