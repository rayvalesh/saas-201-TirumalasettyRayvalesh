class BlogPostsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    if(params[:admin])
      admins = User.where(admin: true).all.map{|u| u.id}
      @blog_posts = BlogPost.where(user_id: admins).all
    else
      @blog_posts = BlogPost.all
    end
  end

  def show
    if (params[:id])
      @blog_post = BlogPost.find(params[:id])
      @OP = User.find(@blog_post.user_id).email
      @comments = Comment.where(blog_post_id: params[:id]).all

      if user_signed_in?
        @like = Like.where(blog_post_id: params[:id], user_id: current_user.id).first
      else
        @like = nil
      end

    end
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

    if user_signed_in?
      @blog_post.user_id = current_user.id
    end

    if @blog_post.save
      redirect_to action: "index"
    else
      flash[:danger] = @blog_post.errors.values.join(", ")
      render "new"
    end
  end

  def destroy
    if (params[:id])
      @blog_post = BlogPost.find(params[:id])
      unless @blog_post.nil?
        @blog_post.delete
      end
      redirect_to action: "index"
    end
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    @blog_post = BlogPost.find(params[:id])

    if user_signed_in?
      @blog_post.user_id = current_user.id
    end

    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      flash[:danger] = @blog_post.errors.values.join(", ")
      render "edit"
    end
  end

  def blog_post_params
    params[:blog_post].permit(:title, :content, :id, :admin)
  end
end
