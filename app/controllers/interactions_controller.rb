class InteractionsController < ApplicationController

  def index
    @interactions = Interaction.search(params[:search])
  end

  def show

  end

end