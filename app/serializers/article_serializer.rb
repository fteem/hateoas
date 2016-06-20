class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :author
end
