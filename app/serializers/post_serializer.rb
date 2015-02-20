class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :descsription, :username, :link
end
