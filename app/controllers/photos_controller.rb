class PhotosController < ApplicationController
	def index 
 		@photos = Photo.all
 	end

 	def new 
 		@photos = Photo.new
 	end

 	def create 
 		@photo = Photo.new(photo_params)
 	
 		if @photo.save 
		 	redirect_to @photo

		else
			render :new
		end
 	end
 	
 		def show
 			@photo = Photo.find(params[:id])
 		end

 	private 
 	def photo_params
 		params.require(:photo).permit(:caption)
 	end
 end