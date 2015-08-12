class TagsController < ApplicationController
	before_filter :require_login, :only => [:destroy]

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag '#{@tag.hash_tag}' Destroyed!"
		redirect_to(tags_path)
	end

	def update
		@tag = Tag.find(params[:id])
		@tag.update(tag_params)
		flash.notice = "Tag '#{@tag.hash_tag} Updated!'"
		redirect_to(tag_path)
	end

	protected
		def tag_params
			params.require(:tag).permit(:name)
		end
end
