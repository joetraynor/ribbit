class InteractionsController < ApplicationController

  def index
    @ribbits = Ribbit.search_mention(params[:search]) if params[:search]
    @ribbits = Ribbit.search_mention(current_user.username)
  end

end