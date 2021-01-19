class BlogsController < InheritedResources::Base
	def index
    if params[:search]
      @blogs = Blog.search(params[:search]) 
    else 
      @blogs = Blog.all
    end
  end

private
	def blog_params
    params.require(:blog).permit(:title, :descripion, :image, :user_id)
  end
end
