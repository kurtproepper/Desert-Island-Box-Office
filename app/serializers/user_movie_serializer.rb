class UserMovieSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :user_id
  belongs_to :movie
  belongs_to :user
end
