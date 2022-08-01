# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins '*'

#     resource '*',
#              headers: :any,
#             #  expose: ['Authorization'],
#             # https://stackoverflow.com/questions/72654116/jwt-token-is-not-returned-when-user-logs-in-using-devise-and-jwt
#              methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/api/*',
      headers: %w(Authorization),
      methods: :any,
      expose: %w(Authorization),
      max_age: 600
  end
end
