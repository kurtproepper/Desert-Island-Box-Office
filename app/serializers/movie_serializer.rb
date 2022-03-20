class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :director, :overview, :poster_path
  belongs_to :user
  has_many :user_movies
end
