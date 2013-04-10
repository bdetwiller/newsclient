# == Schema Information
#
# Table name: comment_ancestries
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  comment_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentAncestry < ActiveRecord::Base
  attr_accessible :parent_id, :comment_id

  belongs_to :parent, class_name: 'Comment'
  belongs_to :comment
end
