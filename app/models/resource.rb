# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  summary    :text
#  url        :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Resource < ActiveRecord::Base
  belongs_to :category
end
