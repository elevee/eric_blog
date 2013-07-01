class PostsController < ApplicationController
	def index
		@name = "Eric Levine"
		@posts = Post.all
	end
end