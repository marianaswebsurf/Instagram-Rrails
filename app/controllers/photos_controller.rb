class PhotosController < ApplicationController

 	def new 
 		@photo = Photo.new
 	end

 	def create 
 		@photo = current_user.photos.create(photo_params)
 	
 		if @photo.save
		 	redirect_to @photo
		else
			render :new
		end	
 	end
 	
 	def show
 		@photo = Photo.find(params[:id])
 		@comment = Comment.new
 	end

 	private 
 	def photo_params
 		params.require(:photo).permit(:caption, :image)
 	end
 end