# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :updated_at
  belongs_to :author
  type :article

  link :self do
    href author_article_path(object.author.id, object.id)
  end
end
