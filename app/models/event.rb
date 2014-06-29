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

class Event < ActiveRecord::Base
  default_scope -> { order("events.date ASC") }
end
