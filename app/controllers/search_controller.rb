class SearchController < ApplicationController
  def index
    @members = SearchPresenter.new(params[:state])
  end
end