require 'paperclip'

module RailsFilemanager
  class Engine < ::Rails::Engine
    isolate_namespace RailsFilemanager

    config.paperclip_storage_options = {}
  end
end
