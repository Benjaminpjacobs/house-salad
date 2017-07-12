class SearchPresenter
  attr_reader :results

  def initialize(state)
    @results = PropublicaService.search(state)[:results].map do |rep|
        Representative.new(rep)
      end

  end

  def by_seniority
    @results.sort_by{|rep| rep.seniority}.reverse
  end

  def count
    @results.count
  end
end