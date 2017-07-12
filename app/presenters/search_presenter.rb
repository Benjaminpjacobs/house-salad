class SearchPresenter
  def initialize(state)
    @results ||= search_results
    @state = state
  end

  def search_results
    PropublicaService.search(state)[:results].map do |rep|
      Representative.new(rep)
    end
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