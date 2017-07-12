class Representative
  attr_reader :name, :role, :party, :seniority, :district

  def initialize(data)
    @name       = data[:name]
    @role       = data[:role]
    @party      = data[:party]
    @seniority  = data[:seniority].to_i
    @district   = data[:district]
  end
end