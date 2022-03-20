class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    if params[:id] == "me" # GET /users/me
      user = current_user
    else # GET /users/4
      user = User.find_by(id: params[:id])
    end
    render json: user
  end

  def index
    users = User.all
    render json: users
  end
end
