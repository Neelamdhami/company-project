class CommentsController < InheritedResources::Base

	
	private
		def comment_params
      params.require(:comment).permit(:name, :comment, :user_id)
    end
end
