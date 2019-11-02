class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @comment = Comment.new(blog_post_id: params[:blog_post_id])
  end

  def create
    @comment = Comment.new(comment_params)

    if user_signed_in?
      @comment.user_email = current_user.email
      @comment.user_id = current_user.id
    end

    if @comment.save
      b = BlogPost.find(@comment.blog_post_id)
      if User.find(b.user_id).admin
        ContactMailer.contact("Someone commented on one of your posts. Post Title: "+b.title, "rayvalesh@gmail.com").deliver_later
      end
      redirect_to blog_post_path(id: @comment.blog_post_id)
    else
      flash[:danger] = @comment.errors.values.join(", ")
      redirect_to new_comment_path(:blog_post_id => @comment.blog_post_id)
    end
  end

  def destroy
    if (params[:id])
      @comment = Comment.find(params[:id])
      blog_post_id = @comment.blog_post_id
      unless @comment.nil?
        @comment.delete
      end
      redirect_to blog_post_path(id: blog_post_id)
    end
  end

  def comment_params
    params[:comment].permit(:content, :id, :blog_post_id)
  end

end
