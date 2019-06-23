class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.get_all
  end
end
