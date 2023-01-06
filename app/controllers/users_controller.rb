
class UsersController < ApplicationController

  # /users/current
  # For this endpoint you should send client, uid and access token with headers
  def current
    render json: UserSerializer.render(current_user)
  end
end