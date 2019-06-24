class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.get_all
  end

  def show
    @blog_post = BlogPost.find(params["id"].to_i)
    @blog_posts = BlogPost.get_all
  end

end
