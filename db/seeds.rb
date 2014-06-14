# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

9.times do
  Resource.create(
    title: "Royal Roads Counselling Service",
    summary: "A voluntary, free personal counselling service to provide
              confidential information and referrals, brief counselling and
              support or guidance.",
    url: "https://student.myrru.royalroads.ca/student-services/counselling-services",
    phone: "250-474-2303 <br/> Toll-free 1-877-662-6706"
  )
end

9.times do
  Event.create(
    date: rand(10.years).from_now,
    name: ["Community volunteer night", "GBV education awareness", "The truth about GBV"].sample,
    location: ["RRUSA headquarter", "Royal Roads Campus Security Office", "Red Fish Blue Fish"].sample,
    address: ["141 Pandora Ave, Victoria, BC", "23 Yates Street, Victoria, BC", "1318 Ivy Place, Victoria, BC"].sample
  )
end
