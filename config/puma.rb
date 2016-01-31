rails_env = ENV['RAILS_ENV'] || 'development'

threads 4,4

bind  fetch(:puma_bind)
pidfile  fetch(:puma_pid)
state_path fetch(:puma_state)

activate_control_app