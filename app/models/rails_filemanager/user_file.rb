module RailsFilemanager
  class User_file < ActiveRecord::Base
    has_attached_file :file, RailsFilemanager::Engine.config.paperclip_storage_options.merge(styles: { thumb: "100x100>" })

    before_post_process :allow_only_images

    default_scope order(:created_at).reverse_order

	def allow_only_images
		false unless self.image?
	end

	def image?
		self.file_file_name =~ /(\.jpg|\.jpeg|\.png|\.gif)$/i
	end

	def thumb_url
		if self.image?
			self.file.url(:thumb)
		else
			"/assets/rails_filemanager/file.png"
		end
	end
  end
end
