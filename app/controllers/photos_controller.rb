class PhotosController < ApplicationController
	def index 
 		@photos = Photo.all
 	end

 	def new 
 		@photos = Photo.new
 	end
 end