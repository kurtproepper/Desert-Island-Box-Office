class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :director, :overview, :poster_path
end
