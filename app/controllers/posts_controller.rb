class PostsController < ApplicationController
	def index
		@name = "Eric Levine"
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end
end