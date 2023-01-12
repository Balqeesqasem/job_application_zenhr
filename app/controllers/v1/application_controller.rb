class V1::ApplicationController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!


  def authenticate_admin!
    errors = []
    errors << "You need to sign in from admin user account to access this information, invalid admin user" if current_admin.blank?
    if errors.present?
      render json: { errors: errors }, status: :unauthorized
      return
    end
  end

  def current_admin    
    current_admin = current_user.admin
  end
end
