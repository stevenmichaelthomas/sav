# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  date       :datetime
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
