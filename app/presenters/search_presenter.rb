class SearchPresenter

  def initialize(state)
    @results ||= Representative.search_for_reps(state)
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