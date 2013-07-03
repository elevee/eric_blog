class PostsController < ApplicationController
	def index
		@name = "Eric Levine"
		@posts = Post.all
		@posts = @posts.sort_by &:title

		# @posts = Post.scoped
		# @posts = @posts.where(:title ==)
		# @posts = @posts.order(:title)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to @post
		else
			render action: 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])

	# Parameters: {
	# 	"utf8"=>"✓", 
	# 	"authenticity_token"=>"VRLiZoDss3qI8JZhBHCFIPTlmlxNoTN80zNq8G/f/J4=", 
	# 	"post"=>{	"title"=>"Waaaaaah Blerg", 
	# 						"body"=>"In a grumpy mood. Ugh This was worth a blog post"
	# 					}, 
	# 	"commit"=>"Update Post", 
	# 	"id"=>"3"
	# 	}
	end

	def update
		@post = Post.find(params[:id])
		# @post.title = params[:post][:title]
		# @post.body = params[:post][:body]

		# @post.update_attributes( :title => params[:post][:title],
		# 													:body => params[:post][:body]
		# )

		@post.update_attributes(params[:post])


		if @post.save
			redirect_to @post
		else
			render 'edit'
		end
	end

	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
end