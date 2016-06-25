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

class Article < ApplicationRecord
  belongs_to :author
end
