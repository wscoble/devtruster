class IdentitiesController < ApplicationController
  def index
    @identities = Identity.all

    respond_to do |format|
      format.html
      format.json { render json: @identities }
    end
  end
end
