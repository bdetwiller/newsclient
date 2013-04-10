# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :post_id, :parent_id, :comment_id

  belongs_to :user
  belongs_to :post

  has_many :comment_ancestries
  has_many :comments, through: :comment_ancestries
  has_one :parent, through: :comment_ancestries

  # REV: remember to do validations, like: validates :body, presence: true
end

##Comment
#attrs :parent_id, :user_id, :body, :timestamps

#belongs_to :user
#belongs_to :post
#has_many :comments
#accepts_nested_attributes_for :comments
