# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  user_id    :integer
#  link       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :link, :title, :user_id, :comments_attributes
  belongs_to :user
  has_many :comments
  accepts_nested_attributes_for :comments
end

##Post
#attrs :title, :user_id, :link, :timestamps

#belongs_to :user
#has_many comments
