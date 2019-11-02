class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = Like.new()
    @like.blog_post_id = params[:blog_post_id]

    if user_signed_in?
      @like.user_id = current_user.id
    end

    if @like.save
      b = BlogPost.find(@like.blog_post_id)
      if User.find(b.user_id).admin
        ContactMailer.contact("Someone liked one of your posts. Post TItle: "+b.title, "121003161@sastra.ac.in").deliver_later
      end
    else
      flash[:danger] = @like.errors.values.join(", ")
    end
    redirect_to blog_post_path(id: @like.blog_post_id)
  end

  def destroy
    if (params[:id])
      @like = Like.find(params[:id])
      blog_post_id = @like.blog_post_id
      unless @like.nil?
        @like.destroy
      end
      redirect_to blog_post_path(id: blog_post_id)
    end
  end

  def like_params
    params[:comment].permit(:id, :blog_post_id, :user_id)
  end

end
