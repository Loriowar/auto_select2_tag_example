# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.transaction do
  Country.create(
      [{name: 'China', population: 1368090000},
       {name: 'India', population: 1263010000},
       {name: 'United States', population: 319151000},
       {name: 'Indonesia', population: 252164800},
       {name: 'Brazil', population: 203495000},
       {name: 'Pakistan', population: 188236000},
       {name: 'Nigeria', population: 178517000},
       {name: 'Bangladesh', population: 157379000},
       {name: 'Russia', population: 146233000},
       {name: 'Japan', population: 127080000},
       {name: 'Mexico', population: 119713203},
       {name: 'Philippines', population: 100603400},
       {name: 'Vietnam', population: 89708900},
       {name: 'Ethiopia', population: 87952991},
       {name: 'Egypt', population: 87561300},
       {name: 'Germany', population: 80767000}]
  )
end

City.transaction do
   City.create([{name: 'Beijing', country_id: Country.where(name: 'China').first.id},
                {name: 'Shanghai', country_id: Country.where(name: 'China').first.id}])
   City.create([{name: 'New Delhi', country_id: Country.where(name: 'India').first.id},
                {name: 'Mumbai', country_id: Country.where(name: 'India').first.id}])
   City.create([{name: 'Washington, D.C.', country_id: Country.where(name: 'United States').first.id},
                {name: 'New York City', country_id: Country.where(name: 'United States').first.id}])
   City.create([{name: 'Jakarta', country_id: Country.where(name: 'Indonesia').first.id},
                {name: 'Surabaya', country_id: Country.where(name: 'Indonesia').first.id}])
   City.create([{name: 'Brasilia', country_id: Country.where(name: 'Brazil').first.id},
                {name: 'Sao Paulo', country_id: Country.where(name: 'Brazil').first.id}])
   City.create([{name: 'Islamabad', country_id: Country.where(name: 'Pakistan').first.id},
                {name: 'Karachi', country_id: Country.where(name: 'Pakistan').first.id}])
   City.create([{name: 'Abuja', country_id: Country.where(name: 'Nigeria').first.id},
                {name: 'Lagos', country_id: Country.where(name: 'Nigeria').first.id}])
   City.create([{name: 'Dhaka', country_id: Country.where(name: 'Bangladesh').first.id},
                {name: 'Chittagong', country_id: Country.where(name: 'Bangladesh').first.id}])
   City.create([{name: 'Moscow', country_id: Country.where(name: 'Russia').first.id},
                {name: 'Saint Petersburg', country_id: Country.where(name: 'Russia').first.id}])
   City.create([{name: 'Tokyo', country_id: Country.where(name: 'Japan').first.id},
                {name: 'Kyoto', country_id: Country.where(name: 'Japan').first.id}])
   City.create([{name: 'Mexico City', country_id: Country.where(name: 'Mexico').first.id},
                {name: 'Acapulco', country_id: Country.where(name: 'Mexico').first.id}])
   City.create([{name: 'Manila', country_id: Country.where(name: 'Philippines').first.id},
                {name: 'Quezon City', country_id: Country.where(name: 'Philippines').first.id}])
   City.create([{name: 'Hanoi', country_id: Country.where(name: 'Vietnam').first.id},
                {name: 'Ho Chi Minh City', country_id: Country.where(name: 'Vietnam').first.id}])
   City.create([{name: 'Addis Ababa', country_id: Country.where(name: 'Ethiopia').first.id},
                {name: 'Asosa', country_id: Country.where(name: 'Ethiopia').first.id}])
   City.create([{name: 'Cairo', country_id: Country.where(name: 'Egypt').first.id},
                {name: 'Siwa', country_id: Country.where(name: 'Egypt').first.id}])
   City.create([{name: 'Berlin', country_id: Country.where(name: 'Germany').first.id},
                {name: 'Bremen', country_id: Country.where(name: 'Germany').first.id}])
end
