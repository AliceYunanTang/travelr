class CommentsController < ApplicationController
  def show
  end

  def index
      @comments = Comment.all
  end

  def create
      desc = params["description"]
      spot_id = params["spot_id"]
      Comment.create description: desc , spot_id: spot_id
      redirect_to comments_path
  end

  private
  def user_params
    params.require(Comment).permit(:description , :spot_id)
  end

end
