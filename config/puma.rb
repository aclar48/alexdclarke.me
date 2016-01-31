# Change to match your CPU core count
workers fetch(:puma_workers)

# Min and Max threads per worker
threads fetch(:puma_threads)

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"

# Default to production
rails_env = ENV['RAILS_ENV'] || "production"
environment rails_env

# Set up socket location
bind fetch(:puma_bind)

# Logging
stdout_redirect fetch(:puma_access_log), fetch(:puma_error_log), true

# Set master PID and state locations
pidfile fetch(:puma_pid)
state_path fetch(:puma_state)
activate_control_app

on_worker_boot do
  require "active_record"
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end