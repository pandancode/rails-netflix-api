if Rails.env === 'production'
  # ! @yilun --> Change this in production

  Rails.application.config.session_store :cookie_store, key: '_rails-netflix-api', domain: 'name-of-you-app-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_rails-netflix-api'
end
