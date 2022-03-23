class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :common_ids
  has_many :user_movies
  has_many :movies

  def common_ids
    current_user_movie_ids = scope.movies.pluck(:id)
    user_movie_ids = object.movies.pluck(:id)
    return current_user_movie_ids.intersection(user_movie_ids)
  end

  # def movies
  #   object.movies.order(:rank)
  # end
end
