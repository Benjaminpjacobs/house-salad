class SearchController < ApplicationController
  def index
    @members = SearchPresenter.new(params[:state])
    # search = PropublicaService.search(params[:state])
    # @members = search[:results]
  end
end