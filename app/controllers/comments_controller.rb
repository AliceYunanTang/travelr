class CommentsController < ApplicationController

  before_action :get_comment,       only: [ :show, :edit, :update ]

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update]

  before_action :check_if_admin, only: [ :admin_index ]

  def get_comment
    # @spot = Spot.find params["spot_id"]
    # @comments = @spot.comments
    @comment = Comment.find(params[:id])
  end

  def show
  end

  def edit
  end


  def new
    @comment = Comment.new
  end

  def admin_index
    @comments = Comment.all
  end

  def index
    @comments = Comment.where spot_id: params["spot_id"]
  end

  def create
      # @comment = Comment.new #comment_params
      desc = params["description"]
      spot_id = params["spot_id"]

      @comment = Comment.new description:desc, spot_id:spot_id, user_id:@current_user.id

      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @comment.image = req['public_id']

      else
        @comment.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"

      end

      @comment.spot_id = params["spot_id"]

      if @comment.save
        redirect_to spot_path( params["spot_id"] )
      end

      # Comment.create description: desc , spot_id: spot_id
      # Comment.create comment_params
      # redirect_to comments_path
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @comment.image = req['public_id']
    end
    @comment.update comment_params
    redirect_to spot_comments_path( params["spot_id"] )
  end

  def destroy
    Comment.find( params["id"] ).destroy

    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:description , :spot_id, :user_id)
  end

end
