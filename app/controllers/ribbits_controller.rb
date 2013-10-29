class RibbitsController < ApplicationController

  def index
    @ribbits = Ribbit.all
    @ribbit = Ribbit.new
    @ribbits = Ribbit.search(params[:search])
  end

  def destroy
    @post = Ribbit.find(params[:id])
    @post.destroy
    flash[:notice] = "Let's hope that was supposed to be deleted"
    redirect_to root_url
  end

  def show
    
  end

  def create
    ribbit = Ribbit.new(params[:ribbit])
    ribbit.user_id = current_user.id

    flash[:error] = "Your Ribbit was over 140 characters you idiot" unless ribbit.save
    redirect_to root_url
  end

end
