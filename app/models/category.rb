# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many :tools

  scope :with_resources, -> (n = 1) { where('tools_count >= ?', n) }

  def anchor
    name.split(' ')[0].downcase
  end
end
