class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.create(message_params.merge(photo_id: params[:photo_id]))
		if @comment.save
			redirect_to photo_url(@comment.photo)
		else 
			redirect_to root_urls
		end
	end

	def show 
		@comment = Comment.find(params[:id])
	end
	
	private
		def message_params
			params.require(:comment).permit(:message)		
		end
end
