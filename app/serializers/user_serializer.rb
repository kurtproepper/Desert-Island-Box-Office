class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :user_movies
  has_many :movies
end
