# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :password, :username

  validates :password, :username, presence: true

  has_many :posts
  has_many :comments

end

##User
#attrs :username :password

#has_many :posts
#has_many :comments

##Post
#attrs :title, :user_id, :link, :timestamps

#belongs_to :user
#has_many comments


##Comment
#attrs :parent_id, :user_id, :body, :timestamps

#belongs_to :user
#belongs_to :post
#has_many :comments
#accepts_nested_attributes_for :comments
