class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.new(
      title: params[:title],
      release_date: params[:release_date],
      director: params[:director],
      overview: params[:overview],
      poster_path: params[:poster_path],
    )
    movie.save
    render json: movie
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.release_date = params[:release_date] || movie.release_date
    movie.director = params[:director] || movie.director
    movie.overview = params[:overview] || movie.overview
    movie.poster_path = params[:poster_path] || movie.poster_path
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: { message: "Movie Successfully Destroyed" }
  end

  def search
    response = HTTP.get("https://api.themoviedb.org/3/search/movie?api_key=#{Rails.application.credentials.movie_api_key}&language=en-US&query=#{params[:title]}&page=1&include_adult=false")
    data = JSON.parse(response.body)
    movies = data["movies"]
    render json: data
  end
end
