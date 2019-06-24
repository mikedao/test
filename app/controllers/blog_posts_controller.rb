class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.get_all
  end

  def show
    @blog_post = BlogPost.find(params["id"].to_i)
    @blog_posts = BlogPost.get_all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = current_user.blog_posts.new(blog_post_params)
    @blog_post.active = true
    if @blog_post.save
      flash[:success] = "Your post has been saved!"
      redirect_to blog_posts_path
    else
      flash[:danger] = @blog_post.errors.full_messages
      render :new
    end
  end
end
