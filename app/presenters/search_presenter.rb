class SearchPresenter

  def initialize(state)
    @results ||= Representative.reps_by_state(state)
  end

  def by_seniority
    results.sort_by{|rep| rep.seniority}.reverse
  end

  def count
    results.count
  end
  
  private
    attr_reader :results, :state
end