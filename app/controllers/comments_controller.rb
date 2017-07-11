class CommentsController < ApplicationController
  def show
    @comment = Comment.find params["id"]
  end

  def index
      @comments = Comment.all
  end

  def create
      @comment = Comment.new comment_params
      # desc = params["description"]
      # spot_id = params["spot_id"]
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @comment.image = req['public_id']
      else
        @comment.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"
      end

      @comment.spot_id = params["spot_id"]

      if @comment.save
        redirect_to comments_path
      end

      # Comment.create description: desc , spot_id: spot_id
      # Comment.create comment_params
      # redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:description , :spot_id)
  end

end
