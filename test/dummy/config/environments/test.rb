Dummy::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  config.eager_load = false

  # Configure static asset server for tests with Cache-Control for performance
  if config.respond_to?(:public_file_server)
    config.public_file_server.enabled = true
    config.public_file_server.headers = { 'Cache-Control' => 'public, max-age=3600' }
  else
    if config.respond_to?(:serve_static_files)
      config.serve_static_files = true
    else
      config.serve_static_assets = true
    end
    config.static_cache_control = 'public, max-age=3600'
  end

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = :none

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection    = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  if ::Rails::VERSION::MAJOR < 4
    config.i18n.enforce_available_locales = false
  end

  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr

  # See everything in the log (default is :info)
  config.log_level = :debug

  config.i18n.fallbacks = false

  config.active_support.test_order = :sorted
end
