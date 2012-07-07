class CreateFilemanagerUserFiles < ActiveRecord::Migration
  def change
    create_table :filemanager_user_files do |t|
    	t.has_attached_file :file
      t.timestamps
    end
  end
end
