class RepositoriesController < ApplicationController
  def index
    @respositories = Repository.all

    respond_to do |format|
      format.html
      format.json { render json: @repositories }
    end
  end
end
