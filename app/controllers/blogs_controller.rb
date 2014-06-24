class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create 
    @blog = Blog.new(blog_params)

    if @blog.save
      # one way of doing it.
      # redirect_to("/blogs/#{@blog.id}")
      # a better of doing it
      # redirect_to blog_path(@blog.id)
      # an awesome way of doing it
      redirect_to blog_path(@blog)
      # do something
    else
      # render means render an html file
      render 'new'
      # do something else
    end
  end

  def show

    @blog = Blog.find(params[:id])

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end

end
