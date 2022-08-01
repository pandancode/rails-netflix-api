class Api::V1::RegistrationsController < Devise::RegistrationsController
  respond_to :json, :controllers => {sessions: 'sessions', registrations: 'registrations'}

  before_action :sign_up_params, if: :devise_controller?, on: [:create]

  # ! @Yilun this is sloppy with the delete but just testing
  skip_before_action :verify_authenticity_token, only: [:create, :delete]

  def create
    build_resource(sign_up_params)
    if resource.save
      render :json => resource, meta: { message: 'Sign up success', token: request.headers["Authorization"] }, :status => :created
    else
      render :json => resource, meta: { message: 'ALT: Sign up success', token: request.headers["Authorization"] }, :status => :created
      # render :json => resource, adapter: :json_api, serializer: ActiveModel::Serializer::ErrorSerializer, meta: { message: 'Sign up success' }, :status => :created
    end
  end


  protected

  def sign_up_params
    params.require(:user).permit(:email, :password)
  end
end
