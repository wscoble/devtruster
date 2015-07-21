# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :redis_store, servers: "redis://#{ENV['REDIS_PORT_6379_TCP_ADDR']}:#{ENV['REDIS_PORT_6379_TCP_PORT']}/0/cache"
