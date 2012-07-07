require_dependency "filemanager/application_controller"

module Filemanager
  class FilesController < ApplicationController
  	def index
		@User_files = User_file.all
	end

	def create
		new_file = User_file.new
		new_file.file = params[:Filedata]
		new_file.save

		render partial: "file", locals: { user_file: new_file }
	end

	def destroy
		file = User_file.find(params[:id])
		file.destroy

		render json: {status: 0}
	end
  end
end
