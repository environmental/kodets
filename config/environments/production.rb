Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = false
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass
  config.assets.compile = false
  config.assets.digest = true
  config.assets.version = '1.0'

  config.assets.precompile += %w( ace/*.js jqconsole/*.js marked/*.js )

  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  config.action_mailer.default_url_options = { host: 'kodets.herokuapp.com' }
end
