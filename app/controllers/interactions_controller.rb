class InteractionsController < ApplicationController

  def index
    query = params[:search].nil? ? current_user.username : params[:search]
    @ribbits = Ribbit.search_mention(query)
  end

end