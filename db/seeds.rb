# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do |i|
	portfolio = Portfolio.new
	i.even? ? portfolio.name = "BLOX_"+Faker::Code.ean.to_s : portfolio.name = "LUM_"+Faker::Code.ean.to_s
	portfolio.save

	count = rand(20000..50000)

	count.times do
		property = Property.new
		property.street_address_1 = Faker::Address.street_address
		property.city = Faker::Address.city
		property.state = Faker::Address.state
		property.zipcode = Faker::Address.zip.to_s
		property.latitude = Faker::Address.latitude.to_f
		property.longitude = Faker::Address.longitude.to_f
		property.parcel_id = Faker::Code.ean
		property.save

		lien = Lien.new
		lien.certificate_no = Faker::Company.ein
		lien.rv = rand(500.00..15000.00).round(2)
		lien.fv = (lien.rv * rand(0.40..0.95)).round(2)
		lien.total_assessed_value = (lien.fv * rand(10.0..80.0)).round(2)
		lien.interest_rate = rand(0.0..0.18).round(4)
		lien.penalty_rate = rand(0.0..0.20).round(4)
		lien.purchase_date = Faker::Date.between(7.years.ago, Date.today)
		lien.property = property
		lien.save

		portfolio.liens << lien
	end
end

