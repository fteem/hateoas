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

class ArticleSerializer < ApplicationSerializer
  attributes :id, :title, :body
  belongs_to :author
end
