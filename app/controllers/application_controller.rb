class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # config.action_dispatch.default_headers.merge!('X-UA-Compatible' => 'IE=edge')

end
