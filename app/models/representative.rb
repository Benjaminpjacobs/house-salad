class Representative
  attr_reader :name, :role, :party, :seniority, :district

  def initialize(data)
    @name       = data[:name]
    @role       = data[:role]
    @party      = data[:party]
    @seniority  = data[:seniority].to_i
    @district   = data[:district]
  end

  def self.reps_by_state(state)
    PropublicaService.search(state)[:results].map do |rep|
      new(rep)
    end
  end

end