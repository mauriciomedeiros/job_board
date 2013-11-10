class CommentsController < ApplicationController
	def create
		@job = Job.find(params[:job_id])
		@comment = @job.comments.build(params[:comment])
		if @comment.save
			flash[:notice] = "Comment was created with success."
		else
			flash[:alert] = "Please fill in all fields to create a comment!"
		end
		redirect_to @job
	end
end