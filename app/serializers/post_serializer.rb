class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :username, :link
  has_many :comments, include: true
end
