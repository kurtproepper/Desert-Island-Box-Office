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

  #def compare
  #  user = User.first.movies
  #  friends = User.all.movies
  #  friends = friends.drop(1)
  #  common = []
  #  index = 0
  #  friend = friends[0]
  #  while index < friends.length
  #    common = user.intersection(friend).push
  #    index = index + 1
  #  end
  #  render json: common
  #end
  def compare
    user = [1, 3, 2, 4, 5]
    friend = [6, 7, 1, 5, 9]
    common = user.intersection(friend)
    render json: common
  end
end
