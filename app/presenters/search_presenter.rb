class SearchPresenter
  attr_reader :results

  def initialize(state)
    @results = PropublicaService.search(state)[:results] 
  end

  def by_seniority
    @results.sort_by{|k|k[:seniority].to_i}.reverse
  end

  def count
    @results.count
  end
end