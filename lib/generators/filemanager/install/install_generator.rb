require 'rails/generators/migration'

module Filemanager
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations and initializers"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_templates
        template "filemanager.rb", "config/initializers/filemanager.rb"
        migration_template "create_filemanager_user_files.rb", "db/migrate/create_filemanager_user_files.rb"
      end
    end
  end
end