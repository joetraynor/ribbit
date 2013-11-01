class InteractionsController < ApplicationController

  def index

  end

  def search
    @ribbits = Ribbit.search_mention(params[:search])
    render :index
  end

end