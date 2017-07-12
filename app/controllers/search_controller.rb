class SearchController < ApplicationController
  def index
    search = PropublicaService.search(params[:state])
    @members = search[:results]
  end
end