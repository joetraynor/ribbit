class InteractionsController < ApplicationController

  def index
    @ribbits = Ribbit.search_mention(current_user.username)
    @ribbits = Ribbit.search_mention(params[:search])
  end

end