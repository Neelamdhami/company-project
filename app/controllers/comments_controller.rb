class CommentsController < ApplicationController
	before_action :find_commentable
    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new comment_params

      if @comment.save
      	flash[:notice] = 'Your comment was successfully posted!'
      	redirect_back(fallback_location: root_path)
        #redirect_to :back, notice: 'Your comment was successfully posted!'
      else
      	flash[:notice] = 'Your comment was successfully posted!'
      	redirect_back(fallback_location: root_path)
        #redirect_to :back, notice: "Your comment wasn't posted!"
      end
    end

    def destroy
      @comment= Comment.find(params[:comment_id])
      @comment.destroy
      redirect_back(fallback_location: root_path)
    end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Blog.find_by_id(params[:blog_id]) if params[:blog_id]
    end

end
