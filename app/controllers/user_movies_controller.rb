class UserMoviesController < ApplicationController
  def create
    user_movie = UserMovie.new(
      movie_id: params[:movie_id],
      user_id: params[:user_id],
      rank: params[:rank],
    )
    user_movie.save
    render json: user_movie
  end

  def index
    user_movies = UserMovie.all
    render json: user_movies
  end

  def show
    user_movie = UserMovie.find_by(id: params[:id])
    render json: user_movie
  end

  def destroy
    user_movie = UserMovie.find_by(id: params[:id])
    user_movie.destroy
    render json: { message: "User_Movie Successfully Destroyed" }
  end

  def update
    user_movie = UserMovie.find_by(id: params[:id])
    user_movie.movie_id = params[:movie_id] || user_movie.movie_id
    user_movie.user_id = params[:user_id] || user_movie.user_id
    user_movie.rank = params[:rank] || user_movie.rank
    user_movie.save
    render json: user_movie
  end
end
