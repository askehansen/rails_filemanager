require 'paperclip'

module Filemanager
  class Engine < ::Rails::Engine
    isolate_namespace Filemanager

    config.paperclip_storage_options = {}
  end
end
