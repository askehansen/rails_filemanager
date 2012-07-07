module Filemanager
  class ApplicationController < ActionController::Base
  	before_filter :check_authorization

  	def check_authorization
  	end
  end
end
