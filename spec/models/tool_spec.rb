# == Schema Information
#
# Table name: tools
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  summary     :text
#  url         :string(255)
#  phone       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

require 'spec_helper'

describe Resource do
  pending "add some examples to (or delete) #{__FILE__}"
end
