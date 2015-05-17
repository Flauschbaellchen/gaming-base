module Florensia
  class Engine < ::Rails::Engine
    isolate_namespace Florensia

    initializer 'florensia.append_migrations' do |app|
      unless app.root.to_s == root.to_s
        config.paths["db/migrate"].expanded.each do |path|
          app.config.paths["db/migrate"].push(path)
        end
      end
    end

    initializer 'florensia.asset_precompile_paths' do |app|
      app.config.assets.precompile += ["florensia/(?:\/|\\|\A)application\.(css|js)$/"]
    end

  end
end
