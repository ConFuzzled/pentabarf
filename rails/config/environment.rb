# Be sure to restart your web server when you modify this file.

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
ENV['RAILS_ENV'] ||= 'production'

RAILS_GEM_VERSION = '2.3.14'

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require 'momomoto/momomoto'
require 'momomoto_logging'
require 'jabberlogger'
require 'maillogger'
require 'yaml'
require 'bluecloth'

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here

  # Skip frameworks you're not going to use (only works if using vendor/rails)
  config.frameworks -= [ :active_record ]

  # Only load the plugins named here, by default all plugins in vendor/plugins are loaded
  # config.plugins = %W( exception_notification ssl_requirement )

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Use the database for sessions instead of the file system
  # (create the session table with 'rake db:sessions:create')
  # config.action_controller.session_store = :file
  config.action_controller.session_store = nil

  # See Rails::Configuration for more options
  
#  config.gem 'momomoto', :version => '>= 0.2.1'

  Momomoto::Database.config( YAML.load_file( config.database_configuration_file )[ENV['RAILS_ENV']] )
  Momomoto::Database.connect

end

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register "application/x-mobile", :mobile

# Include your application configuration below

# read mail configuration if available
if File.exists?("#{RAILS_ROOT}/config/mail.yml")
  config = YAML.load_file("#{RAILS_ROOT}/config/mail.yml")
  ActionMailer::Base.smtp_settings = config.each do | k, v | config[k.to_sym] = v end
end

# filter password fields in logs
ActionController::Base.filter_parameter_logging( :password )

module ActionView::Helpers::TagHelper
  def escape_once( html )
    html
  end
end


require 'builder_enhancements'

require 'pope'
::POPE = Pope.new
require 'momomoto_auth'
require 'momomoto_transaction_ids'


