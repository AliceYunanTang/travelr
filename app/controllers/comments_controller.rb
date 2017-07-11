class CommentsController < ApplicationController
  def show
  end

  def index    
  end

  def create
      desc = params["description"]
      spot_id = params["spot_id"]
      Comment.create description: desc , spot_id: spot_id
      redirect_to root_path
  end

  private
  def user_params
    params.require(Comment).permit(:description , :spot_id)
  end

end
