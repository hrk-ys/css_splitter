module CssSplitter
  class Engine < ::Rails::Engine
    initializer 'css_splitter.sprockets_engine', after: 'sprockets.environment', group: :all do |app|
      if app.config.assets.public_methods.include? :configure
        app.config.assets.configure do |assets|
          assets.register_bundle_processor 'text/css', CssSplitter::SprocketsEngine
        end
      else
        app.assets.register_bundle_processor 'text/css', CssSplitter::SprocketsEngine
      end
    end

    initializer 'css_splitter.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper CssSplitter::ApplicationHelper
      end
    end
  end
end
